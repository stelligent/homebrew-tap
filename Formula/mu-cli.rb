# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.2.1/mu-darwin-amd64" # The MacOS master url
    sha256 "bcfce10816b3118352d12d8adfd9efcb5c28492772359947a656aa4dd63535c0" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.2.1/mu-linux-amd64" # The Linux master url
    sha256 "cf99749c12f1b4ee84158739f9e67d4bd49bcb67928abf382a056aaecec11bb3" # The Linux master sha256sum
  end
  version "1.2.1" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "7d9cf93b022f3e569e28cb5266457db83aab1b62407c714410adefe79f29e609" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "8ce394ef1e26689a9359e6b1df3ceb4c194b0a273d62e9c1e0b4ebd76dbf3b29" # The Linux develop sha256sum
    end
    version "1.3.1-develop" # The develop version
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
