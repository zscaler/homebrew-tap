class ZscalerTerraformer < Formula
    desc "A command line utility to facilitate terraforming your existing ZIA and ZPA resources."
    "https://github.com/zscaler/zscaler-terraformer"
    url "https://github.com/zscaler/zscaler-terraformer/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "f4cdf1adf85e01f2ff5ebb7c0dd3a5084a1be3552a459593f61a9013ca4ff5e4"
    license "MIT"
    head "https://github.com/zscaler/zscaler-terraformer.git", branch: "master"


    depends_on "go" => :build

    def install
        bin.install "zscaler-terraformer"
        prefix.install "README.md"
        prefix.install "LICENSE"
        bin.install Dir["lib"]
        bin.install Dir["files"]
        system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
        assert_match version.to_s,
          shell_output("#{bin}/zscaler-terraformer version")

        assert_match "Available Commands",
          shell_output("#{bin}/zscaler-terraformer -h")
    end
  end