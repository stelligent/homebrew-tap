class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.10/config-lint_0.0.10_Darwin_x86_64.tar.gz"
  version "0.0.10"
  sha256 "ae8dd3132b0128bb412c3f0ab3dde2d98dca61fb87bc8ac17644b712ed41681f"

  def install
    bin.install "config-lint"
  end
end
