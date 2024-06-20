# Copyright (c) Zscaler, Inc.
# MIT License

cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "1.2.2"

  livecheck do
    url "https://github.com/zscaler/zscaler-terraformer/releases.atom"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["']}i)
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "bb21a577a0e91e110a6287a707682671e5f1c958bf8d1d03069f3755589aa54a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "d4e0a515852b1c0858f91d2a5a5e9954f4c7ead4d245ff4b9a55476b79f35d1f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "726f41ae7ffd743339616fafca283916706b7c0c6e04180356590f4cb5eb32ff"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "a63fc966e2afa1d328f8a744884b18edfcd32f2ac97fd3978f374a952c6aedc5"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "6b8bae51b54f7a067d2483782052bafe35d0028f5b7e2e7ab186777825a54f0d"
  end

  binary "zscaler-terraformer"
end
