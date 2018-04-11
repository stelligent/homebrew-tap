class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.1/config-lint_0.0.1_Darwin_x86_64.tar.gz"
  version "0.0.1"
  sha256 "781bf78cf2f6e748da2ce458e4abbce40c87172992069f6c2b4b5d333a73ee63"

  def install
    bin.install "config-lint"
  end
end
