# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.0.2/mu-darwin-amd64" # The MacOS master url
    sha256 "3aa7dde1edb1a2cca964e3d9f2f2078febdfe2baa7f0add9eefad76b2ec00a25" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.0.2/mu-linux-amd64" # The Linux master url
    sha256 "49cec0b026fb4911c7d31418e86bee12399513e074f9fd6817cf75924514f851" # The Linux master sha256sum
  end
  version "1.0.2" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "fc93373b6bc6dbc349f009112d9047f721f72ca3b2bf9456b7223f616bc1f27f" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "5a9cd8fb77ee1330cedb7adc104657698d0424d5438cdae296cb9bdb59a017ca" # The Linux develop sha256sum
    end
    version "1.1.1-develop" # The develop version
  end

  bottle :unneeded

  def install
    if OS.mac?
      bin.install "mu-darwin-amd64"
      mv "#{bin}/mu-darwin-amd64", "#{bin}/mu-cli"
    elsif OS.linux?
      bin.install "mu-linux-amd64"
      mv "#{bin}/mu-linux-amd64", "#{bin}/mu-cli"
    end
  end

  test do
    system "#{bin}/mu-cli" ,"--version"
  end
end
