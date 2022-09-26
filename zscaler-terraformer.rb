class ZscalerTerraformer < Formula
  desc "A command-line utility to terraforming your existing ZIA and ZPA resources"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  url "https://github.com/zscaler/zscaler-terraformer/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "f4cdf1adf85e01f2ff5ebb7c0dd3a5084a1be3552a459593f61a9013ca4ff5e4"
  license "MIT"

  def install
    bin.install "zscaler-terraformer"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    system "false"
  end
end
