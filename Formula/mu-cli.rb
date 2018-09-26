# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4/mu-darwin-amd64" # The MacOS master url
    sha256 "16a0484d08838a8dcfd576b65f08b17e32088112f8d2283193f7d7a3d40c46e7" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4/mu-linux-amd64" # The Linux master url
    sha256 "01d599ceb68833b9c8734aa2a21bc1ca56c6890c04737f1d74a0768bfa920f53" # The Linux master sha256sum
  end
  version "1.5.4" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "b6f22c8048ec28e05e2c1cf0efcbdb32f599c37c430573dcd70518724d746f07" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.4-develop/mu-linux-amd64" # The Linux develop url
    sha256 "a82c4e13c7684ebaf9a4c2d40280db19878bc15848db20f3613bbfc7d01ff4c3" # The Linux develop sha256sum
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
