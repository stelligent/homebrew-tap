# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.3/mu-darwin-amd64" # The MacOS master url
    sha256 "664b18d24fac24482fc4c1bd8cd089d80780bfe230fb7d3d7abd2c2ec834b170" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.3/mu-linux-amd64" # The Linux master url
    sha256 "a462c7e64cf8415a100b2694da3e10c50fd09a956d80c4fa2cef6daf40e7826b" # The Linux master sha256sum
  end
  version "1.5.3" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "e5919353933d066802e54933afd5836bf461b3aa3c455ca252214bc69604aced" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4-develop/mu-linux-amd64" # The Linux develop url
    sha256 "d1ac05942a26c396bc846362540c39a8e8541259170228da571566503b73d686" # The Linux develop sha256sum
    end
    version "1.5.4-develop" # The develop version
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
