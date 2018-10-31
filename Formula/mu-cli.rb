# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.8/mu-darwin-amd64" # The MacOS master url
    sha256 "fbf3a0a134a01d2c237cfa9792aaf074fb001f61d12fda245892fdd68ca9b1dc" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.8/mu-linux-amd64" # The Linux master url
    sha256 "0f5221d9e6eee56020b4a4c6a25f6e37e401dcf5e46a8a323e96baa8f7c0c23e" # The Linux master sha256sum
  end
  version "1.5.8" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "22f4813f1e8720466fc0a7133c9785ddd24ebf337e110b54a34862538186fc70" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.9-develop/mu-linux-amd64" # The Linux develop url
    sha256 "f67f8811821f1304a7569861df7218137eb747c9be6b30363f8dba54886ec9ed" # The Linux develop sha256sum
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
