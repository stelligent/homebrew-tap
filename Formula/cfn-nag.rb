class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/stelligent/cfn_nag/tarball/v0.4.79"
  version "0.4.79"
  sha256 "3d8f8d1ae6f5e744dc2daa1109f6b86dbba670ad7480253eae98f1b22c780d6f"


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
