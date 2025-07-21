# Copyright (c) Zscaler, Inc.
# MIT License

cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "2.0.6"

  livecheck do
    url "https://github.com/zscaler/zscaler-terraformer/releases.atom"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "cff2a05114b47d3f9e9f5eae04278b749a6403e856c74a54d9b9b8a1eab332bc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "587e0b075ff845967fc5dd10d78da53f91ab45994a213287d6b99117ec4b9034"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "160f527446d49ce5cc4077379b58af43d2be2d80727161d21c017aacc7f25236"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "00b8214bcc7df2b961d162eeb96e082ccf38e4eaa53cff221f495e07d865d535"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "65a2140bff744baedf454ca7a1ec4ec6ac18d6db371eeaf8ba766d9471d8837c"
  end

  binary "zscaler-terraformer"
end
