class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.17/config-lint_0.0.17_Darwin_x86_64.tar.gz"
  version "0.0.17"
  sha256 "e558ab943e560f88a4fa2d520eecafc2ccf69c536e306a9d78dbe8f409cf4f06"

  def install
    bin.install "config-lint"
  end
end
