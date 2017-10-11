# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.0.2/mu-darwin-amd64" # The MacOS master url
    sha256 "3aa7dde1edb1a2cca964e3d9f2f2078febdfe2baa7f0add9eefad76b2ec00a25" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.0.2/mu-linux-amd64" # The Linux master url
    sha256 "49cec0b026fb4911c7d31418e86bee12399513e074f9fd6817cf75924514f851" # The Linux master sha256sum
  end
  version "1.0.2" # The master version
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
