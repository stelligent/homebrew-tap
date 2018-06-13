class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.7/config-lint_0.0.7_Darwin_x86_64.tar.gz"
  version "0.0.7"
  sha256 "92ff6fb1252b060cb1aa7076c46c8b5289ad0678029420ba4126b4a43cce1bf5"

  def install
    bin.install "config-lint"
  end
end
