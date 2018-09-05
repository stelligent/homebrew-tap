class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.18/config-lint_0.0.18_Darwin_x86_64.tar.gz"
  version "0.0.18"
  sha256 "0e98e30a99020e56bf6ccdd81cc3666671eb6194cefaea82a3c51572b93f8ee3"

  def install
    bin.install "config-lint"
  end
end
