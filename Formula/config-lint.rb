class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.4/config-lint_0.0.4_Darwin_x86_64.tar.gz"
  version "0.0.4"
  sha256 "73a52232bf18ccb3446adf40e627f5c16f245f9e02a704eb727de806efcb4506"

  def install
    bin.install "config-lint"
  end
end
