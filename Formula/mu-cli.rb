# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.5/mu-darwin-amd64" # The MacOS master url
    sha256 "3b4d9ebe99915107a4d2335f6fe55d20968656f3e49f61979566c2d95c9ddfab" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.5/mu-linux-amd64" # The Linux master url
    sha256 "ba47884b643c345953a630d2b239b444a3145cf914e9778091021061d00bd974" # The Linux master sha256sum
  end
  version "1.5.5" # The master version
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
