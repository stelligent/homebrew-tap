# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.2.2/mu-darwin-amd64" # The MacOS master url
    sha256 "be136a4272bcce8c09efb33ef49ea12550a9dbc14739aa90f630ebcf63a91c49" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.2.2/mu-linux-amd64" # The Linux master url
    sha256 "1b63599b2ac9ccbf0779484268f8106e8d9dc8afc3e619ba82554a8f943ade45" # The Linux master sha256sum
  end
  version "1.2.2" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "792eb7ce55d382c3be2887ab2c6e93c94a7ff005b54222721bbbebab5317992a" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "18e797f32cc49c77eeb974e827e3665b68ade91fb63e267ee8c824828e91e961" # The Linux develop sha256sum
    end
    version "1.3.1-develop" # The develop version
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
