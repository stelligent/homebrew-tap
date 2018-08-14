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
    sha256 "545ce8e293b14159124c6557bfd16da31c76149b271d8645eb63399582a67dff" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "fbe62c39a7da2a253e297aa5e2d11030890f937e2345eec859c386fb7a6e89d6" # The Linux develop sha256sum
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
