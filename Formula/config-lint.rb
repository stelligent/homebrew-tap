class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.26/config-lint_0.0.26_Darwin_x86_64.tar.gz"
  version "0.0.26"
  sha256 "ab649931bbc2c79a9d2cb4b3e6fd3d7d918455ab09fe92717f385727babc6418"

  def install
    bin.install "config-lint"
  end
end
