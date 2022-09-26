cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  appcast "https://github.com/zscaler/zscaler-terraformer/releases.atom"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "zscaler-terraformer is a command line utility to facilitate terraforming your existing ZIA and ZPA resources."
  version "0.0.1"

  if Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.tar.gz"
    sha256 "f2291fa0fcb72b93f29ef4f9b5f81d9a3e7fcdd249bf4a0d54109cbac960713e"
  else
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.tar.gz"
    sha256 "452f8326e51fbebdb35c5df11b211de14b2259cc77042d3a189d96d29a3b9990"
  end

  binary "zscaler-terraformer"
end