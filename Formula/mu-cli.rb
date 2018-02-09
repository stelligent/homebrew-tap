# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.1/mu-darwin-amd64" # The MacOS master url
    sha256 "98d1753fe8ff42729dfd6240adbbb14551178b720eb53b13dd95d5e61051e507" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.1/mu-linux-amd64" # The Linux master url
    sha256 "01854a7af68955e34da685d1cd39a817d3f3a3b3cb4506e282805355679b4062" # The Linux master sha256sum
  end
  version "1.4.1" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "0c624ce3add56ed3791538b3d9098de469b1ac6a0bf9f69cb3ca7439df23a39e" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2-develop/mu-linux-amd64" # The Linux develop url
    sha256 "88cc33aac1f4f1fab9f55b660e0232a363b545a43d6d8ba217c0c9d1674d1064" # The Linux develop sha256sum
    end
    version "1.4.2-develop" # The develop version
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
