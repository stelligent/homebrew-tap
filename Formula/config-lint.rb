class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.29/config-lint_0.0.29_Darwin_x86_64.tar.gz"
  version "0.0.29"
  sha256 "9b62a442f03a09e16441ed86bca89e33ccd21c384b81a63247abaeb9530b610c"

  def install
    bin.install "config-lint"
  end
end
