# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.3/mu-darwin-amd64" # The MacOS master url
    sha256 "0d2dba5e02c3070d7d3aa97ddbf7165177f4535be1b250f410897f3c96945c94" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.3/mu-linux-amd64" # The Linux master url
    sha256 "d2709ac7774beb42a4c633d0447e591bd31819ab424b6179b9bdb1d5a447c732" # The Linux master sha256sum
  end
  version "1.4.3" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "f3d11eeee86cec47ba9c14e8cee3cd498c614a987a5a4b98e81e5fec8631aa0d" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "a346a0ecec60a2b004f262c7291cf4d2e38fb209e39c3f794c2e56c12bc7ebea" # The Linux develop sha256sum
    end
    version "1.5.1-develop" # The develop version
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
