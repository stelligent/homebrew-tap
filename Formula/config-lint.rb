class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.2/config-lint_0.0.2_Darwin_x86_64.tar.gz"
  version "0.0.2"
  sha256 "c2f19ac4fa06ee6623e397ef4db8d690957d7d199f6895863e6df53cd630606e"

  def install
    bin.install "config-lint"
  end
end
