# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.2/mu-darwin-amd64" # The MacOS master url
    sha256 "99d1527875f8d17f57a05b607dae6fed87e656e82a74006da46c6e48eccd5300" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.2/mu-linux-amd64" # The Linux master url
    sha256 "c10f8b7298f473770440ca88363b0f682b55c250ebeba645d3f147a19417c94c" # The Linux master sha256sum
  end
  version "1.5.2" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.5.3-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "4fb91c06f007a7032fadd3906de7e4d4ddd17dd42bed63a8a2f1c3eb8ce8b2b5" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.5.3-develop/mu-linux-amd64" # The Linux develop url
    sha256 "df5b7add3176a719180c5bbe6fd1d16595a69b50e84381d55929f6587d043f45" # The Linux develop sha256sum
    end
    version "1.5.3-develop" # The develop version
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
