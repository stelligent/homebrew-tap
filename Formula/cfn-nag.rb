class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/stelligent/cfn_nag/tarball/v0.6.1"
  version "0.6.1"
  sha256 "49b5b3f213bd7b792eacf447e6ecd0c926fbd4b5bea1b325f7b95fa7e943f067"


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
