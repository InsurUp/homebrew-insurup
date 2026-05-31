class Insurup < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.0/insurup-darwin-arm64"
      sha256 "a314a32e31c9262bb258970d97c067dd03b720636ca7122fbb420d57936f932b"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.0/insurup-darwin-x64"
      sha256 "32e94631f7073fdf6e7914cba14c512e49f277b283b99c484ffde3d271c22cce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.0/insurup-linux-arm64"
      sha256 "ceff9a9a363fbf5f855953b69d8d304d59085ff4cc3222c8d5d681881888d556"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.0/insurup-linux-x64"
      sha256 "07c3f6e7bf4b6252c7935cc53cde865985a384f5817bf437f37dacc224f95e18"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
