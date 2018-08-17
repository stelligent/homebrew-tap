# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1/mu-darwin-amd64" # The MacOS master url
    sha256 "474971f63f57d4e700c4e25857280bd1442143e97ae435bccd4a6dc86a7ba05b" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1/mu-linux-amd64" # The Linux master url
    sha256 "40dfc78cf1a6f15e419643ad6155534f3c7934681e74f624c4873be3e34bae65" # The Linux master sha256sum
  end
  version "1.5.1" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.2-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "687d09ce555c75f72b59f44f5d74df7ac65d8c1d8f191742b17f860332a6695f" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.2-develop/mu-linux-amd64" # The Linux develop url
    sha256 "388ffe5ccb3a77c5274222e677a8d85b9c1c0d2e2dbf9dc8961c47ead3269335" # The Linux develop sha256sum
    end
    version "1.5.2-develop" # The develop version
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
