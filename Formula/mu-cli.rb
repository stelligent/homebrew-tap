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
    sha256 "589cb43fad6170be79102ec255f1afe0a01527dbf7852fa2ad790cac475d8d93" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "557397133c0ea428a6b7a9a0993bc19ed51a8ef801e9da4db8725d36e2808290" # The Linux develop sha256sum
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
