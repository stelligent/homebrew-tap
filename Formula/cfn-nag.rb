class CfnNag < Formula

  desc "Auditing tool for CloudFormation templates"
  homepage "https://github.com/stelligent/cfn_nag"
  url "https://github.com/pshelby/cfn_nag/tarball/v0.4.57"
  version "0.4.57"
  sha256 "1d8538f96553e9b4a74c75dd3a095ef61e035db7033608e33d6566f9e2244227"

  
  depends_on "ruby" if MacOS.version <= :sierra
  
  resource "cfn-model" do
    url "https://rubygems.org/gems/cfn-model-0.4.14.gem"
    sha256 "aba02b8061ab672638f61167f3f88fb39a8dbcf87f9132295651357059a42a98"
  end

  resource "colorize" do
    url "https://rubygems.org/gems/colorize-0.8.1.gem"
    sha256 "0ba0c2a58232f9b706dc30621ea6aa6468eeea120eb6f1ccc400105b90c4798c"
  end

  resource "jmespath" do
    url "https://rubygems.org/gems/jmespath-1.3.1.gem"
    sha256 "7efca9cabe1c34a1064eb4ef73b51c4e92a3bf4014a68265dc0aa7f2e48d881f"
  end

  resource "logging" do
    url "https://rubygems.org/gems/logging-2.2.2.gem"
    sha256 "963359dbdab725a3320eab179017d20d5b9731d7148e1efa8432c184a48a461a"
  end

  resource "netaddr" do
    url "https://rubygems.org/gems/netaddr-2.0.4.gem"
    sha256 "57d76b012075c7189b14eb7bfe8ac110f59979abb6d0244dc6791ce621d873aa"
  end

  resource "trollop" do
    url "https://rubygems.org/gems/trollop-2.9.9.gem"
    sha256 "e4da3b29c084af29dc0d802dbbba0231fc3ee855e5ef57680b6f8aa32d3d901c"
  end


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
