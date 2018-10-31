# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9/mu-darwin-amd64" # The MacOS master url
    sha256 "75817c65870b5441a1300537d234d688c5f1d42a9db4506e46aff6d82576c717" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9/mu-linux-amd64" # The Linux master url
    sha256 "f45428dba3f07fdf25ed35d2b2db094a6d14855661e561dc8bf7dd401ac15892" # The Linux master sha256sum
  end
  version "1.5.9" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "95190325af1f4c8b04479b74c642edfc998516da8ec58486a217031483b03805" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-linux-amd64" # The Linux develop url
    sha256 "47e6d5a88cd325240ae172695e071189a943b156465f81c28950828e5dcc1edf" # The Linux develop sha256sum
    end
    version "1.5.9-develop" # The develop version
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
