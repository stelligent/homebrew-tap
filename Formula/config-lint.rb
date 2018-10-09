class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.20/config-lint_0.0.20_Darwin_x86_64.tar.gz"
  version "0.0.20"
  sha256 "db5125c46e5bfb6a7a858ea9b0e12d9305f4d6c7987841c7abeb7105d50858a7"

  def install
    bin.install "config-lint"
  end
end
