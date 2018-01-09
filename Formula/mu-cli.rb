# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1/mu-darwin-amd64" # The MacOS master url
    sha256 "aaa200a3a0904e9eaee508e32c735679580752300c8b5935d47fedac6cc6cca9" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1/mu-linux-amd64" # The Linux master url
    sha256 "45a1b6de1e74ca8b73f4ee1f5577ca1747b33e2202ad700e260093359e516b82" # The Linux master sha256sum
  end
  version "1.3.1" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "7834baa92db7582a396f5d285cd4f3657eade8c8a99746f1a5ea982a7be04a2d" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "a7d5ca4725f51288bc67df6b1059cf1b46fc75d743ebd155de817e828791e311" # The Linux develop sha256sum
    end
    version "1.4.1-develop" # The develop version
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
