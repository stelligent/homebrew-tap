# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.2.3/mu-darwin-amd64" # The MacOS master url
    sha256 "bc2f09b094f3b33c1d025bc753b4ecf1ae30dc4328a6e430b3ddcdd3748c39e6" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.2.3/mu-linux-amd64" # The Linux master url
    sha256 "cbd744acbcece80d42b0f9675716694f8b3291e0503b84023d266bf4634d95c2" # The Linux master sha256sum
  end
  version "1.2.3" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "1f4a12abcfc72e2056e89848ec078f6bc2e8e61e2f180c8a9a97f1ba433c9d94" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.3.1-develop/mu-linux-amd64" # The Linux develop url
    sha256 "6915b2cdeb5714898fdd8452c0551e05b124d89dc0efa8753d883864e3a1e082" # The Linux develop sha256sum
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
