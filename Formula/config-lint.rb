class ConfigLint < Formula
  desc ""
  homepage ""
  url "https://github.com/stelligent/config-lint/releases/download/v0.0.19/config-lint_0.0.19_Darwin_x86_64.tar.gz"
  version "0.0.19"
  sha256 "847176a05e52c8600b8826bb75ab3046363cd4964bb6f035afaf2a8437d758f1"

  def install
    bin.install "config-lint"
  end
end
