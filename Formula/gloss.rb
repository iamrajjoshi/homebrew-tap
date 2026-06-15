# typed: false
# frozen_string_literal: true

class Gloss < Formula
  desc "Local browser-based diff review for coding-agent loops"
  homepage "https://github.com/iamrajjoshi/gloss"
  url "https://registry.npmjs.org/getgloss/-/getgloss-0.9.0.tgz"
  sha256 "46e8d396d06862f331a55158abb781648f58a59c0f709975ebfb149776781d09"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gloss --version")
  end
end
