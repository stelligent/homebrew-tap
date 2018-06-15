class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.9/config-lint_0.0.9_Darwin_x86_64.tar.gz"
  version "0.0.9"
  sha256 "1ceebac9fcc0d4c51d5b263b86d67f8577940b69a6e3bba505cbe47e526a7140"

  def install
    bin.install "config-lint"
  end
end
