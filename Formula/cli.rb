class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.5/insurup-darwin-arm64"
      sha256 "328a813028d7941c89b234e56033694238e78db41514d14a242b3e13e72a2f56"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.5/insurup-darwin-x64"
      sha256 "858e8edf23f945aa0d0c9f4b075805bbb246963a19c55eef66b2212787c6d4ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.5/insurup-linux-arm64"
      sha256 "12ae1636fd00770e25a2ad94a8e747e311b3ef419b30f1026027f661aa9633f5"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.5/insurup-linux-x64"
      sha256 "2774952377b3af9b5620308e99f1ba21a8ee1a802e613b592fb6b0d3a884e4b1"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
