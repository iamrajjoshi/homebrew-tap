# typed: false
# frozen_string_literal: true

class Gloss < Formula
  desc "Local browser-based diff review for coding-agent loops"
  homepage "https://github.com/iamrajjoshi/gloss"
  url "https://registry.npmjs.org/getgloss/-/getgloss-0.13.0.tgz"
  sha256 "9b95e693ca85bf29d3bf373837c8750680237c834a0aa19af8a315fa95243aae"
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
