# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6/mu-darwin-amd64" # The MacOS master url
    sha256 "ddf2814de073153ba343f71ccf85308f41953e811e15cc98df9d374c40745160" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6/mu-linux-amd64" # The Linux master url
    sha256 "bbbdd4e841e2970035da6fb2ab7ed1c5e1a5b0fbe886508de94b18852caec9d3" # The Linux master sha256sum
  end
  version "1.5.6" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "cd836e94b96a83b3d45697ff87b680edc3708fa63e1266c536450b93989b0371" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.6-develop/mu-linux-amd64" # The Linux develop url
    sha256 "5d6f3a0a6fd5098021828fb2c6c8383e9c3a76351a051ced9dae5e0e19073567" # The Linux develop sha256sum
    end
    version "1.5.6-develop" # The develop version
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
