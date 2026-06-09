class Plugin < Formula
  desc "TypeScript authoring SDK for InsurUp plugins"
  homepage "https://github.com/InsurUp/plugin"
  url "https://registry.npmjs.org/@insurup/plugin/-/plugin-0.1.0.tgz"
  sha256 "2c160cd5500650954072efa9be965f523d1d0cc01305e9d73fe0e1c0251a0a2a"
  license "MIT"

  def install
    root = (buildpath/"package/package.json").exist? ? buildpath/"package" : buildpath
    pkgshare.install root.children
  end

  test do
    assert_match version.to_s, (pkgshare/"package.json").read
    assert_predicate pkgshare/"src/index.ts", :exist?
  end
end
