class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "1.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "a44da51c889938a5eff2b710945f038cc6da40035950566ecbc4e00a14857c1b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "87c1e57428bc7eea8413202716a70a3357e4091e84f3e803cdcac43a430e5f78"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "1c5afb5fbb72e2eb5a449569a90cdf25f67720237931c1be27f7a3c4f7063994"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "92f62f8ac914226fe93da23c9a03966711fed023368cffaf1ee81238fa548e0c"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "7b992ed464eb1b816c9da9d4e91515eaa348feca12e5edcc3027bf71a76d128b"
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
