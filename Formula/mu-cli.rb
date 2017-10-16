# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.0.5/mu-darwin-amd64" # The MacOS master url
    sha256 "89d4ef6be48a19b73a24a078b0c4457640cd6e65576c54746d8ce8e804c4cdd7" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.0.5/mu-linux-amd64" # The Linux master url
    sha256 "5b7ca88339ff7a51bc3c85cadd6377d795171c638ff7237aa1fe806b276fce1e" # The Linux master sha256sum
  end
  version "1.0.5" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "6a2823d3254ec58331d5090377b61f28f4eed453235acd121fef7a0ed4ebf817" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.1.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "57f8364269f7d42751c3e2a6ea2f241698f5c6613fa7b82e7390fb6179bb8ebc" # The Linux develop sha256sum
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
