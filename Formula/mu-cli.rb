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
    sha256 "6d2ed636e21b50940cd5d8ffb9be84436802f5a344346391d5295b257f0ebbf0" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "1f6f0fb35182a12e93d2d256d7f0a4ad5f0f7835bf374cd0b6206154e9223e5b" # The Linux develop sha256sum
    end
    version "1.1.1-develop" # The develop version
  end

  bottle :unneeded

  def install
    if OS.mac?
      bin.install "mu-darwin-amd64"
      mv "#{bin}/mu-darwin-amd64", "#{bin}/mu"
    elsif OS.linux?
      bin.install "mu-linux-amd64"
      mv "#{bin}/mu-linux-amd64", "#{bin}/mu"
    end
  end

  test do
    system "#{bin}/mu" ,"--version"
  end
end
