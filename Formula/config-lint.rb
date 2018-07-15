class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.16/config-lint_0.0.16_Darwin_x86_64.tar.gz"
  version "0.0.16"
  sha256 "4f1c7c9c5f01832d8b958575757572d21279143c283d3d7b93086a7c558654e4"

  def install
    bin.install "config-lint"
  end
end
