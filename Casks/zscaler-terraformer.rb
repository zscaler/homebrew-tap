# Copyright (c) Zscaler, Inc.
# MIT License

cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "2.1.1"

  livecheck do
    url "https://github.com/zscaler/zscaler-terraformer/releases.atom"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "c33462875d2d70ed5e3732ada45cc99124c66dae84fad6e4f3131b2ed17b888d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "325033f9bbec2ae4b98156f2c2ee5b6d040cde5e5d8e5a1eb204fe03c5a72152"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "0cf90bcf20388293450e33b785ca1ecceb26534918b4209ec62c8213a03c428a"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "9990262942f908262170ba739a66a182f5d6a2c8dbbd644c64c3cbb472b0bce7"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "a555b090a92950e4a8494827dbc80591585d47430eceb591cac462d52e74fdf2"
  end

  binary "zscaler-terraformer"
end
