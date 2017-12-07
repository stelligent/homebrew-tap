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
    sha256 "1fb5a6d18c9f205806e87eff86f3233ebab017da15822c86d85a67ca6e38aa93" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "3575b34e3d485a8824f3b286d65a42198d2d2790881b2b1220686c3c35f8c0aa" # The Linux develop sha256sum
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
