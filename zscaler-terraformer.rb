class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.0.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "c19c54da8f7203b386fb25eb781a3d715008bd22a911e656082796843146e568"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "191bb9454996285abbc235d4bad4909d98ad8e998bdf17d08e87636e079d3f5f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "169442c79edc880cf72d40d7d0348163ef76a1cb6ab617cccce78ad50ee0ad02"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "2a70a56daf4313b0b880ca5de08ca0284e2fc7ae129c72c743f9ea37008e7508"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "cb0c77f2100d971f086792ef4b7886ebfca8c8907aefe6b9983c6a34961916d9"
  end

  conflicts_with "zscaler-terraformer"

  livecheck do
    url "https://github.com/zscaler/zscaler-terraformer/releases.atom"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer -h"
  end
end
