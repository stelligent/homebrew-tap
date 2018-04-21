class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.3/config-lint_0.0.3_Darwin_x86_64.tar.gz"
  version "0.0.3"
  sha256 "735ecb8050e214ae9efe547057b1797eac1669d069b6e9b0cc4b91e4f5c67bfc"

  def install
    bin.install "config-lint"
  end
end
