# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.5/mu-darwin-amd64" # The MacOS master url
    sha256 "448199557673d960f3133ec991847c44e7e011fc227769dc1dda0e6962db5336" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.5/mu-linux-amd64" # The Linux master url
    sha256 "f3c924024720f721732e52f27c1c224dc97fe4917c7f40b7a029b7668191b076" # The Linux master sha256sum
  end
  version "1.5.5" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "652c6aa0c81b4ec5f0f82afe86f423bca202616e5bbd0546c15ab3905439a0de" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6-develop/mu-linux-amd64" # The Linux develop url
    sha256 "245f2935439a8c25f6bbab5e274e67def4ad2752c7997042e61c8a8b9a10c591" # The Linux develop sha256sum
    end
    version "1.5.6-develop" # The develop version
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
