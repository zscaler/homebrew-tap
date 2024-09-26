class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "2485c93928fdefea291dd33f5067f28e269c28aecd833c4ffbf043f20d80ecb0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "36aa5f8090867ce444b0aa458b2d9ef91ee61a7c172f184df29d1fbd1e690d7e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "814bce6c1e27565bf5ce1d88b31499f0d567424483c876311b642aeb523cfc9b"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "f6e34bbff7354da2e145d6d7a936dc16a5172b2cbba3034722b04a2c4aad5e4a"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "fe632b344d29ac42bbba41acc069308a8c0788f6bf6425cb90c495f287e983eb"
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
