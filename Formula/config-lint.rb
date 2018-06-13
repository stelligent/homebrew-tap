class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.5/config-lint_0.0.5_Darwin_x86_64.tar.gz"
  version "0.0.5"
  sha256 "07e0357aa6c80399880226442dde70fd36516aa54b2b7ee6c1fec2ddb4a937d3"

  def install
    bin.install "config-lint"
  end
end
