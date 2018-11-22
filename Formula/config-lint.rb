class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.24/config-lint_0.0.24_Darwin_x86_64.tar.gz"
  version "0.0.24"
  sha256 "40ddaa164451953f15cede0ea624dad8b620fe0bce0b9012f40100ac03cffce9"

  def install
    bin.install "config-lint"
  end
end
