class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "e777e2d624ffe5c8d956297d4adfd94606358010a57d0d26e136bcd488b0b2e4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "df28e6e0ca9576893b7cf8bc577d4f469c82c7581384c695ebc214cd0c6ca154"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "31c430284a68b22a50740a902451cc71528609fd098704e524e14a804d8f72f8"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "3b9ac2cfa36a22a1356b82e6e6daea8e8158a77a95447fdf8eb795c952e15266"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "d83ef4f2c4efa494ded8ae0b7bdb39c6f760f8e4c6dc7869b1ee762334f22e97"
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
