class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.1.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "2f3efd560110320ebede8df884cb00f8d493bf3f8d191ddcf8c68fc5e3b6efa1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "a7611f95430df68611ab008086b22536ef52b973ab218e629ba67b4ecbde7b2f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "db52a9864d1cca39e1d3bfaa7bbd7df7620fb51903f6488adecee4a8b2616701"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "272e9b71dc4412cb2f0b2f9b261c7f50f25401ad90530199271e4e5e9d4597e9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "d815d31b1d03eb3625a6b8bcd48f8a0d796968a95c069eeb0a7814ab5f1b894f"
  end

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer", "version"
  end
end
