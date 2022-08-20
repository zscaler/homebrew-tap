cask "zscaler-terraforming" do
  name "zscaler-terraforming"
  appcast "https://github.com/zscaler/zscaler-terraforming/releases.atom"
  homepage "https://github.com/zscaler/zscaler-terraforming"
  desc "zscaler-terraforming is a command line utility to facilitate terraforming your existing ZIA and ZPA resources."
  version "0.0.1"

  if Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraforming/releases/download/v#{version}/zscaler-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "161c662c020f321997822fba70d2ae0b62d555fa0f7989fdf6a2d16c1abcfb91"
  else
    url "https://github.com/zscaler/zscaler-terraforming/releases/download/v#{version}/zscaler-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "96e58c47d792be50f7faa04dd8410a80f88d88693b45ead0a35ad80d3ca8b2c8"
  end

  binary "zscaler-terraforming"
end