cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  appcast "https://github.com/zscaler/zscaler-terraformer/releases.atom"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.zip"
    sha256 "7fffb6daa936b1ae8cb3518aada412f7e9ec00c9abdb7186ea859a38733b0234"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.zip"
    sha256 "d09e5e6a576a21fb9a838de831157078c39b1ee07e29db98eb2012538ee0fd4d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.zip"
    sha256 "2739b5584506ed11d5afc6e61c9ed6350dfb36e25412ea5e117c46e286273fb8"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm.zip"
    sha256 "3400618ae09e062e95192b9303f185ba28b65578cc0cc92d564e7f9e8d1cd3f5"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.zip"
    sha256 "0aff978031bc7ec630399801994484f609a90c07c8ca52da2db2b51a00b4ba19"
  end

  binary "zscaler-terraformer"
end
