class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "0.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "51c6940050110fdd4e5ee2281a19155d3bd515b361256c2433c78ba93d46e1c7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "1ac23e000fa42e98b5a8f0847d309817aefde1f356669580241f79acd7122631"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "0d7c5e616e2fb3ca2c1b94f4e362764867a8dfe72dbad41530038315aca15fe6"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "52bce0fc62b938ed3cfae65042defdce66a3a86e7e91efa424ccfff5bac94e9d"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "9717465324aa04cd4ea0a4800022d354ef6a4ff5704ebc0afee9b3097c00d2ea"
  end

  conflicts_with "zscaler-terraformer"

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer -h"
  end
end