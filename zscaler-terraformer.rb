class ZscalerTerraformer < Formula
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.1.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "d27c05a5790301e9c6ae9021cd2237c8d107b46d0fd66fe57f36b859a1e6f472"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "4beb64c52ff2cb568c3982204be35ef934454cb398e37cf9beba8a2d00450ba6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "a0ad827aefcbd4d7d1f8715ab37e0a29a4ba5900608d4f7bfaef519c15cca523"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "bc36b73137baa05428e0a6550c8d040eea1069034a284a7ff50b5d4dc1d414ca"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "7aa5baa228a2ef082425c863d07ecf25b64f08d99abf786c257f619821fbdfdd"
  end

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer", "version"
  end
end
