class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/stelligent/cfn_nag/tarball/v0.5.8"
  version "0.5.8"
  sha256 "7cdb735790d7695fceb3cc94fb871b8f0a01a365676d279048770014eb44b77d"


  depends_on "ruby" if MacOS.version <= :sierra


  def install

    ENV["GEM_HOME"] = libexec
    ENV["GEM_VERSION"] = version

    system "gem", "build", "cfn-nag.gemspec"
    system "gem", "install", "cfn-nag"

    bin.install Dir["bin/*"]
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])

  end


  test do

    assert_equal version, shell_output("#{bin}/cfn_nag -v").strip
    assert_equal version, shell_output("#{bin}/cfn_nag_scan -v").strip
    assert_equal version, shell_output("#{bin}/cfn_nag_rules -v").strip

  end

end
