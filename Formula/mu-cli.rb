# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1/mu-darwin-amd64" # The MacOS master url
    sha256 "63d9272428824ccb899639a2b6260f5030d9cd45df7044896facb22c903e9ca8" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1/mu-linux-amd64" # The Linux master url
    sha256 "ba5a87b22017a9aaab99ff1b5c6bbcf6abefb0839ab7444275c1acff120d65ca" # The Linux master sha256sum
  end
  version "1.1.1" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "8be4c49b112ecc52273afc07c584116768839ef267ff3d1ab82200a57309b0a1" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "fb76e7d5eab0ab4ad35845c75ddd99e69967f55ca827a90cdb02a88d26c713b7" # The Linux develop sha256sum
    end
    version "1.1.1-develop" # The develop version
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
