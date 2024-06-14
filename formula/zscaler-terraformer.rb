class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "1.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "fa131585d676cdaa04f4bcdef0fd4d234a191aec012e1290048787644c86b8d8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "9e0fdfd9cecdcab54ffa3fff36a8cb9211c7d1e48b264244432eac589fd9ca63"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "11e3c3874dd09cdce6b95dd0071a6fab088a5a0a9c15cae9b71befe0f93dc7c6"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "fd3f3decf6db4ef923c2fa9b9a5b928090b99dcc1db28590d10a2f37d0a91486"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "b843ab394261ff0e1c648508754954931591a2e5557e33b761b29ab90a3147dd"
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
