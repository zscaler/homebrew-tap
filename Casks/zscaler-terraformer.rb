cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  appcast "https://github.com/zscaler/zscaler-terraformer/releases.atom"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "0.3.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "4ab1e741a631a562593010c18c42f1e1f6ddeeac119cf19b4491e39ace91557f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "ba56bbc1b79ed77fe83e250744010af2a620e36b659c978ec92ed9dc474904b8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "acde5ec225d32aa890a2cc68a922c41bbfc24465c7b2bb28350f8ad87910e14b"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "23268ac16f64fa921549ff296006d0dc217cef2e6e8c73f51ec08796ca70a64e"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "a5ce5827ef96b9fea5c65a16175491b1d6168300a72e06789c9d02f78bf97f73"
  end

  binary "zscaler-terraformer"
end
