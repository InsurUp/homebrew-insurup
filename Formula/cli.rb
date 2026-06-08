class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.3/insurup-darwin-arm64"
      sha256 "ed1e7364eb4ae8f5591c7c86796bbd3b4ab52d5415ba537c8f960ef8a379a300"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.3/insurup-darwin-x64"
      sha256 "9a713aad05884a84da9f381045a2cdf13ca93df8a9f9aca7ade56ba6f457a261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.3/insurup-linux-arm64"
      sha256 "2b2cacba4842150b58ea051f879c1b7136270d4dd4c9cfd5750340f819fd495e"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.3/insurup-linux-x64"
      sha256 "ad0b3b4b5a8e486e3da249ecba05b71dbb94af1705bfd7a81aed425cd821d14e"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
