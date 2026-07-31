# typed: false
# frozen_string_literal: true

class Gloss < Formula
  desc "Local browser-based diff review for coding-agent loops"
  homepage "https://github.com/iamrajjoshi/gloss"
  url "https://registry.npmjs.org/getgloss/-/getgloss-0.15.0.tgz"
  sha256 "097ec1400ab98d112e776ee47ba7a0f71e32a76db969ef3854670e73fa07811b"
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
