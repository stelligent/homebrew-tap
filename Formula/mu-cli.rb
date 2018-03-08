# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.3/mu-darwin-amd64" # The MacOS master url
    sha256 "0d2dba5e02c3070d7d3aa97ddbf7165177f4535be1b250f410897f3c96945c94" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.3/mu-linux-amd64" # The Linux master url
    sha256 "d2709ac7774beb42a4c633d0447e591bd31819ab424b6179b9bdb1d5a447c732" # The Linux master sha256sum
  end
  version "1.4.3" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "1314d6509a2335f137f5e1642cd0ab145927ef1974c8bf3abd00959090b08156" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5-develop/mu-linux-amd64" # The Linux develop url
    sha256 "8693c9348419b15930def47ccc1309c241910dd37772b318fb336fb5576d68b8" # The Linux develop sha256sum
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
