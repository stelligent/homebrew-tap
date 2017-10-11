# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.0.3/mu-darwin-amd64" # The MacOS master url
    sha256 "83fdec66897b388cb3d287a4e93840bc195887bdfb33cd0f67691bfa7d4c0edd" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.0.3/mu-linux-amd64" # The Linux master url
    sha256 "79344557266600c4e8860da391e929bb3b2a51d149720e3ea74f45eb1c7fab19" # The Linux master sha256sum
  end
  version "1.0.3" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "436148a9f88746d98769e23132e6e0d0561b7428ee06502bc57bb5c9c3228073" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "c7cf568ff98b7508fa83c818afc610980cdfe2766a98620240f9a63726b58939" # The Linux develop sha256sum
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
