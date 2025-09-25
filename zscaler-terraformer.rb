class ZscalerTerraformer < Formula
  desc "Generate Terraform configurations from existing Zscaler ZIA/ZPA resources"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_amd64.zip"
    sha256 "f5833dc524910ae2102597d3732a72f141e3d6cc74ec0a90532f9eb414adeed9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_arm64.zip"
    sha256 "6c93af46afc11ad09b3a27597c8e85b428ef614d2090f1848bda109810be4971"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_linux_amd64.zip"
    sha256 "914c8cad6916090940e03f085890d0bfcc7e3e6093f8da3e461861418c9abe54"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_linux_arm64.zip"
    sha256 "65c8b46a43a2767df1ba17f7d14275d64e58a70ccf790b4cb5953327b1725ac6"
  end

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer", "version"
  end
end
