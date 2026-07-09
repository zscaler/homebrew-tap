# Copyright (c) Zscaler, Inc.
# MIT License

cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "2.1.17"

  livecheck do
    url "https://github.com/zscaler/zscaler-terraformer/releases.atom"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "0c6469c60fb67e46a75b769f9c668bc05ea9a3abf5e29276c390d052aaf8eecb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "ecf6baa479bfd693d6a05190828b1b499007ac7a058722b336708b8a933279b8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "97f3af7c61ea591fc7b907dbc247bd0c9a040934e2484a48a543a6fdecb8fc89"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "c061f682d47072c94be57fdea8fb91bbe72f3ea19613dd08413788981b84071d"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "465fae5e8c791c7c50331409844eccccadfebc549db064a2e042fb6db5c62fb4"
  end

  binary "zscaler-terraformer"
end
