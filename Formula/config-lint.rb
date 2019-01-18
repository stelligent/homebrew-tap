class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.28/config-lint_0.0.28_Darwin_x86_64.tar.gz"
  version "0.0.28"
  sha256 "f927962dc71f9dc06673b2cb9a69495547bab39bc7bfba16b78514650c2520c7"

  def install
    bin.install "config-lint"
  end
end
