class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/pshelby/cfn_nag/releases/download/v0.4.67/cfn_nag.zip"
  version "0.4.67"
  sha256 "1d8538f96553e9b4a74c75dd3a095ef61e035db7033608e33d6566f9e2244227"

  def install
    ENV["GEM_HOME"] = libexec

    bin.install "cfn_nag"
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])
  end

  test do
    assert_equal version, shell_output("#{bin}/cfn_nag -v").strip
    assert_equal version, shell_output("#{bin}/cfn_nag_scan -v").strip
    assert_equal version, shell_output("#{bin}/cfn_nag_rules -v").strip
  end
end
