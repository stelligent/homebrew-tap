#!/usr/bin/env sh

#
# update_homebrew_formula_version.sh
# Patrick Shelby, 1/2020
#
# Update cfn_nag Homebrew formula with most recent gem versions and SHA256 values.
# To be run in the stelligent/homebrew-tap GitHub Action workflow.
#

BASE_URL=https://github.com/$ORG
RUBYGEMS_BASE_URL=https://rubygems.org

CFN_NAG_URL=$BASE_URL/cfn_nag
CFN_NAG_VERSION=$(git -C cfn_nag tag -l --sort=creatordate | tail -1 | cut -c2-)
CFN_NAG_SHA256=$(curl -L -s $CFN_NAG_URL/tarball/v$CFN_NAG_VERSION | shasum -a 256 | cut -d' ' -f1)

# Update metadata specific to cfn_nag
sed -i "s#^\(  url\) .*#\1 \"$CFN_NAG_URL/tarball/v$CFN_NAG_VERSION\"#" Formula/cfn-nag.rb
sed -i "s/^\(  version\) .*/\1 \"$CFN_NAG_VERSION\"/" Formula/cfn-nag.rb
sed -i "s/^\(  sha256\) .*/\1 \"$CFN_NAG_SHA256\"/" Formula/cfn-nag.rb

# TODO: The gem 'trollop' is not being updated... Need to investigate
# further, since the same logic works for all other gems.
for gem in $(grep -E "resource.*do" Formula/cfn-nag.rb | sed 's/.*"\(.*\)".*/\1/g'); do
	# Retrieve gem version from Gemfile.log
	GEM_VERSION=$(grep -E "$gem.\([0-9]+\.[0-9]+\.[0-9]+\)" cfn_nag/Gemfile.lock | sed -e 's/.*(//g' -e 's/).*//g')
	[ -z $GEM_VERSION ] && echo "WARNING : Missing version for gem '$gem'.  Skipping update." && continue;

	# Using retrieved version, find corresponding SHA256
	GEM_SHA256=$(curl -s $RUBYGEMS_BASE_URL/api/v1/versions/$gem.json | jq -r ".[] | select(.number == \"$GEM_VERSION\") | .sha")
	[ -z $GEM_SHA256 ] && echo "WARNING : Missing SHA256 for gem '$gem'.  Skipping update." && continue;

	# Change version and sha256 values for gem in cfn-nag.rb
	echo "INFO    : $gem:$GEM_VERSION ($GEM_SHA256)"
	# echo "DEBUG   : sed -i \"N;s#^\(\s*url \\\"$RUBYGEMS_BASE_URL/gems/$gem-\).*\\\n\(\s*sha256\) .*#\\\1$GEM_VERSION.gem\\\"\\\n\\\2 \\\"$GEM_SHA256\\\"#\" Formula/cfn-nag.rb"
	sed -i "N;s#^\(.*url \"$RUBYGEMS_BASE_URL/gems/$gem-\).*\n\(\s*sha256\) .*#\1$GEM_VERSION.gem\"\n\2 \"$GEM_SHA256\"#" Formula/cfn-nag.rb
done
