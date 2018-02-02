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
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "f9e0f8b6ffd766f13c762ff3e216ac1e6da33b868f3ca6da9b6d4008f7ff107c" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "cf17c6a882156ea4f1a97381648b185cc227117dd12e6c8a4007b7d8c291228e" # The Linux develop sha256sum
    end
    version "1.5.1-develop" # The develop version
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
