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
    sha256 "8a34ea27597f2263042fa6a63dbcec4bc690c2d792066eda10c31d5ae444a83c" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "39b52aa8db61832f823725cef653ad17f5ed74c92bd7bbe3bf63a72280ee7bd9" # The Linux develop sha256sum
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
