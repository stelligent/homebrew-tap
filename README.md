# homebrew-tap
This is Stelligent's homebrew tap.  Formulas should go in here.

## Workflows

### [cfn_nag-updater](.github/workflows/cfn_nag-updater.yml)
This GitHub Action will execute [update_cfn_nag_formula_version.sh](.github/scripts/update_cfn_nag_formula_version.sh) modify the cfn-nag.rb file with the latest cfn_nag and requirements versions and commit them to this repo so they are available in Homebrew.  It's triggered by a `repository_dispatch` event from the [stelligent/cfn_nag repo's workflow](https://github.com/stelligent/cfn_nag/blob/master/.github/workflows/gempush.yml) when commits are merged to the master branch.
