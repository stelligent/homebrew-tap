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
    sha256 "4bcff9db0681e6a07690cbb44c8638ef674f6ee7384ca9aa2a7ab3acdb2572e4" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5-develop/mu-linux-amd64" # The Linux develop url
    sha256 "a4e582788a47e4b45cd69568dc1909ade55092bc2a3f3804e0a3c597940317e3" # The Linux develop sha256sum
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
