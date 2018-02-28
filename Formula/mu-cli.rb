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
    url "https://github.com/stelligent/mu/releases/download/v1.4.3-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "d62d858b884fe0bbf9736232e748354560d31d9a6c59a12ea4a1504a0d177bfe" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.3-develop/mu-linux-amd64" # The Linux develop url
    sha256 "f2ca27df545859536d856ca81dc0250c1c3a72e306d40d20a8daf64f9e2ffdb1" # The Linux develop sha256sum
    end
    version "1.4.3-develop" # The develop version
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
