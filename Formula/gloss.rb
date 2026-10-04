# typed: false
# frozen_string_literal: true

class Gloss < Formula
  desc "Local browser-based diff review for coding-agent loops"
  homepage "https://github.com/iamrajjoshi/gloss"
  url "https://github.com/iamrajjoshi/gloss/releases/download/v0.16.1/getgloss-0.16.1.tgz"
  sha256 "a90ac166472d917ea5250e4e7366354e338ae6d26f58dc047b04ef980c0df28e"
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
