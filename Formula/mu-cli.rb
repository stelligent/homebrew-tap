# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2/mu-darwin-amd64" # The MacOS master url
    sha256 "dac2037eceeafaa9adc194ac264447515e885b55c6974d739dc0742d74a5259c" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2/mu-linux-amd64" # The Linux master url
    sha256 "e579697f3af75bdaa05815fefe050607f3ee68f4901985dfe28b4876b5d88639" # The Linux master sha256sum
  end
  version "1.4.2" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "0c624ce3add56ed3791538b3d9098de469b1ac6a0bf9f69cb3ca7439df23a39e" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.2-develop/mu-linux-amd64" # The Linux develop url
    sha256 "88cc33aac1f4f1fab9f55b660e0232a363b545a43d6d8ba217c0c9d1674d1064" # The Linux develop sha256sum
    end
    version "1.4.2-develop" # The develop version
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
