# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.4/mu-darwin-amd64" # The MacOS master url
    sha256 "2e69943190fede12976078f02732cf37c3754f0d6b6378af66b9b733405cd965" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.4/mu-linux-amd64" # The Linux master url
    sha256 "76772cc4c1e2ff5004abfdcc1499ec9380456696c79e20747084cb9a3017068b" # The Linux master sha256sum
  end
  version "1.4.4" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "1065bbd396bf825758504e2afa120af9875897cc82c2a3142b11296d9afa1fa8" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5-develop/mu-linux-amd64" # The Linux develop url
    sha256 "8a89cc5fa65fdb5e391e3c0aa6eb31d700362ab3e805f3352e6b6544d9c6af1c" # The Linux develop sha256sum
    end
    version "1.4.5-develop" # The develop version
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
