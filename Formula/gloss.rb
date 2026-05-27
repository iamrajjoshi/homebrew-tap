# typed: false
# frozen_string_literal: true

class Gloss < Formula
  desc "Local browser-based diff review for coding-agent loops"
  homepage "https://github.com/iamrajjoshi/gloss"
  url "https://registry.npmjs.org/getgloss/-/getgloss-0.6.0.tgz"
  sha256 "05360f9b8abccc1845e5555c4024a5f12fe95c00840279e8c5684872ec357594"
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
