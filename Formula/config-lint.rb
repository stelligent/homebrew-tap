# This file was generated by GoReleaser. DO NOT EDIT.
class ConfigLint < Formula
  desc ""
  homepage ""
  version "0.0.39"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/stelligent/config-lint/releases/download/v0.0.39/config-lint_0.0.39_Darwin_x86_64.tar.gz"
    sha256 "0a9e6704c5f5713c521a37fdd231fb6124e1ad43c5837391b563336edcd1dce7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/stelligent/config-lint/releases/download/v0.0.39/config-lint_0.0.39_Linux_x86_64.tar.gz"
      sha256 "ce563a929e7f48fe8aa24dd3cf3cba163e090c1bab0c3883e0921d3593d62cb2"
    end
  end

  def install
    bin.install "config-lint"
  end
end
