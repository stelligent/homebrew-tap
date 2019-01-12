class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.27/config-lint_0.0.27_Darwin_x86_64.tar.gz"
  version "0.0.27"
  sha256 "3a68027490120c5e4b6ab2d2dd794a1fedcdee30d37e2858e3cf09e3c277f5c1"

  def install
    bin.install "config-lint"
  end
end
