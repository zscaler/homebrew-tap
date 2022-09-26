# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ZscalerTerraformer < Formula
  desc "A command line utility to facilitate terraforming your existing ZIA and ZPA resources."
  homepage "https://github.com/zscaler"
  url "https://github.com/zscaler/zscaler-terraformer/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "f7a8be5f4d88e0959a4541ae7af15da777af08dc9b61ad787f6fa8c19d82e709"
  license "MIT"

  def install
    bin.install 'zscaler-terraformer'
  end
end
