# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6/mu-darwin-amd64" # The MacOS master url
    sha256 "3495c657035481ce4b55016bc10bf870566fc3a9061465b0258f23776067692a" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6/mu-linux-amd64" # The Linux master url
    sha256 "76a4ae8e67562315aba1587fd846a3df989c96eb5f0fc4b5a788427407ec416a" # The Linux master sha256sum
  end
  version "1.4.6" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "3e7b0aabf519ba9810acc38401d41e3298d9caac805f214aec4b93ad38f52df4" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "dc40e6fb1754bd4b92325b8bc174b3458b702f46ac2d4884e497b1803d856966" # The Linux develop sha256sum
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
