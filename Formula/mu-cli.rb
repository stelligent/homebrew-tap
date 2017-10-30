# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.0.6/mu-darwin-amd64" # The MacOS master url
    sha256 "56859dfed15d9786c9416b7a2fc54f5cdd5e273424194d1d8862749c8008cff3" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.0.6/mu-linux-amd64" # The Linux master url
    sha256 "9839f83902bfdf2ddec1fb727b4045e82d42f71b49157bbedfa9c7d04f8999c5" # The Linux master sha256sum
  end
  version "1.0.6" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "e9d3cbe7bcc0b94dc93fb08fcfc35f73e06976e9d9863fe5373d026732016e8f" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "2919c015156c0239882a51cb7b6a9ba9d8951e622bdabaddf4116c444a3f3c8d" # The Linux develop sha256sum
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
