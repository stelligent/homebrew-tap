# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.2/mu-darwin-amd64" # The MacOS master url
    sha256 "d48f626d0f3995868de6ef640b9e5899e7e4eabb561419b50c5a4e1363cff869" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.2/mu-linux-amd64" # The Linux master url
    sha256 "f65fb4c0dd683e24815c2ae3ef82009b754d34d1eec7c65c39865af214f074ae" # The Linux master sha256sum
  end
  version "1.1.2" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.2.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "12000027aecb9a3becc948e6b867157f393c6e21d858ac95182cd1336474fd6e" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.2.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "85cf41f28011ab1b64d9158ce792a77c81824439618873870c2e11e07812a70a" # The Linux develop sha256sum
    end
    version "1.2.1-develop" # The develop version
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
