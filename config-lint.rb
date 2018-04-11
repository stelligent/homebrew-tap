class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/cplee/config-lint/releases/download/v0.0.2/config-lint_0.0.2_Darwin_x86_64.tar.gz"
  version "0.0.2"
  sha256 "c56bcbbb7423fa52231ea10ba2ae054cbe2f85abf59523fdca2a4cf91e16e82c"

  def install
    bin.install "config-lint"
  end
end
