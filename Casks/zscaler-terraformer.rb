# Copyright (c) Zscaler, Inc.
# MIT License

cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "2.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_amd64.zip"
    sha256 "7c0ff9ac73886397606fd244c7af901f74684d41008ccbbb2cd2a5af1b9d2268"
  else
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v2.1.0/zscaler-terraformer_2.1.0_darwin_arm64.zip"  
    sha256 "bebfd003fdad87eeac2b22fca913267085a4255a11fdb4ec550e6a5019042b0f"
  end

  binary "zscaler-terraformer"
end
