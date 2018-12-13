class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.25/config-lint_0.0.25_Darwin_x86_64.tar.gz"
  version "0.0.25"
  sha256 "027708933199007226c342c38c56ef18a5b65858d2b9a8573c90996aa5860a0e"

  def install
    bin.install "config-lint"
  end
end
