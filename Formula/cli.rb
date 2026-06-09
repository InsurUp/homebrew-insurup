class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.1/insurup-darwin-arm64"
      sha256 "8c8a2f757e145b74ed4338f56a821e221c205546366682c63a03e8c5699f367c"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.1/insurup-darwin-x64"
      sha256 "ca528b1dfc7d38dc1d8961e3584b2ca6e120839c5a982e50e73fd45e77f81861"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.1/insurup-linux-arm64"
      sha256 "3467c5a04613720bf69558c62d6d67882cf9ab753ba25e193fb21d856477b217"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.1/insurup-linux-x64"
      sha256 "9275b0d5b15e1a5281de866072c1f6deb761e5f4675321ec84aff1b1e50af022"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
