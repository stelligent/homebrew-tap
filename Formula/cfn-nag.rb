class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/stelligent/cfn_nag/tarball/v0.5.39"
  version "0.5.39"
  sha256 "eb167f705c60d245706d0f015466ded40f23e6a78c96fc0bcd4552e92bcbc991"


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
