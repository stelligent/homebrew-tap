# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5/mu-darwin-amd64" # The MacOS master url
    sha256 "20105a690a015bf97e0f2c5ff35b762fc2a44fc4faa27744258da06c83abfcd2" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5/mu-linux-amd64" # The Linux master url
    sha256 "fd1732dbec3c08715c46e0ccce655a0caa8adcc345a989ef1e1362e585000e36" # The Linux master sha256sum
  end
  version "1.4.5" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "bbf28c31aac7f164d4d94e69e38cdd76d0fc965ab4dbe33e0e3b43361e65a996" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6-develop/mu-linux-amd64" # The Linux develop url
    sha256 "bbcc7f350757e099ed7fe690c5bc38e2e5c64b78b32255ea68b40f80b1c79bd9" # The Linux develop sha256sum
    end
    version "1.4.6-develop" # The develop version
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
