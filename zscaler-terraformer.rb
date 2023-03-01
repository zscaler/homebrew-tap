class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "3f8d8614d2b52adb15a9fa7e55593cd116005539aa51fe4d49733a72af4afa6d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "05d3cfd73b703538ccd04ecf745675895a7f2d9d42a79faaf0f57779b1369d7b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "97ff9da1f68fd60513dcc77e75ce0ce91d72b85e5696330fd98cfd117c9495c6"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "3aa7b79d7796fca8a9b2b6277852f819a6747f7fb969f05f55918497f519ad6a"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "1d397d16a09f40103dd946c4841463e628f580b2488672fd13f536cf2497c183"
  end

  conflicts_with "zscaler-terraformer"

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer -h"
  end
end