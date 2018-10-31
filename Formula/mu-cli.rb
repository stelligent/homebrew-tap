# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.8/mu-darwin-amd64" # The MacOS master url
    sha256 "fbf3a0a134a01d2c237cfa9792aaf074fb001f61d12fda245892fdd68ca9b1dc" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.8/mu-linux-amd64" # The Linux master url
    sha256 "0f5221d9e6eee56020b4a4c6a25f6e37e401dcf5e46a8a323e96baa8f7c0c23e" # The Linux master sha256sum
  end
  version "1.5.8" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "95190325af1f4c8b04479b74c642edfc998516da8ec58486a217031483b03805" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-linux-amd64" # The Linux develop url
    sha256 "47e6d5a88cd325240ae172695e071189a943b156465f81c28950828e5dcc1edf" # The Linux develop sha256sum
    end
    version "1.5.9-develop" # The develop version
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
