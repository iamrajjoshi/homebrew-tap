cask "current" do
  version "0.3.0"
  sha256 "06ba66f3e771ef752c20dc90b0b79dfb50442eef13e7bffd3d305e76bbb9ebe0"

  url "https://github.com/iamrajjoshi/current/releases/download/v#{version}/Current-#{version}.zip"
  name "Current"
  desc "Daily Markdown notes organized in streams"
  homepage "https://github.com/iamrajjoshi/current"

  depends_on macos: :sonoma

  app "Current.app"
end
