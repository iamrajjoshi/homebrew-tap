cask "current" do
  version "0.1.0"
  sha256 "f19d33e37a065deb228b59dc4f9006cdd65c518f98e59fa0f35a4d748495b996"

  url "https://github.com/iamrajjoshi/current/releases/download/v#{version}/Current-#{version}.zip"
  name "Current"
  desc "Daily notes in a single stream"
  homepage "https://github.com/iamrajjoshi/current"

  depends_on macos: ">= :sonoma"

  app "Current.app"
end
