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
    sha256 "ad31487b2f2fd3ac369e4cefdbc146db007f83bbdc03f2a6b6004b720b2706e0" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.2.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "df2dbaa4139272462c75895005c90abb5d8b4b76b0fdf69f5f4a57c9077bc914" # The Linux develop sha256sum
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
