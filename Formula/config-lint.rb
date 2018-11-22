class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.21/config-lint_0.0.21_Darwin_x86_64.tar.gz"
  version "0.0.21"
  sha256 "dec7f54410d7a16bafc74979f2122e722d08f9b69913054cd7ebbb4a525e2968"

  def install
    bin.install "config-lint"
  end
end
