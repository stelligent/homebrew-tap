class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.8/config-lint_0.0.8_Darwin_x86_64.tar.gz"
  version "0.0.8"
  sha256 "7848c85d3bb44236d918de2de0f1b2fd52e342dce10f1797f9a85dc44a724c09"

  def install
    bin.install "config-lint"
  end
end
