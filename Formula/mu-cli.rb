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
    sha256 "32ad1d5d4564e66571a0bfac28921ec34d4503b4bfadef5f2cd61473968264d0" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.2-develop/mu-linux-amd64" # The Linux develop url
    sha256 "88366e8a57d98bc5f7fcbfbd60d82d994198cec5d6cc86c51318fbe81cd2cab3" # The Linux develop sha256sum
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
