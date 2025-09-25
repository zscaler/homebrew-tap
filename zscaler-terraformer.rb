class ZscalerTerraformer < Formula
  desc "Generate Terraform configurations from existing Zscaler ZIA/ZPA resources"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  version "2.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_amd64.zip"
    sha256 "7c0ff9ac73886397606fd244c7af901f74684d41008ccbbb2cd2a5af1b9d2268"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_arm64.zip"
    sha256 "bebfd003fdad87eeac2b22fca913267085a4255a11fdb4ec550e6a5019042b0f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_linux_amd64.zip"
    sha256 "a2d085ebadf537ef8b480f51e7090be0ff3c8c575193b8bcb5eea839f3d1427c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_linux_arm64.zip"
    sha256 "74e9554922e6649bbe732663c7efecb0908d955373b58df833f521f45cd2432d"
  end

  def install
    bin.install "zscaler-terraformer"
  end

  test do
    system "#{bin}/zscaler-terraformer", "version"
  end
end
