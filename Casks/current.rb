cask "current" do
  version "0.1.1"
  sha256 "8a961434075ddf4f96d8c334cf7d99f03e4f4f7fbbf2665ff51e53ed8b0b8d21"

  url "https://github.com/iamrajjoshi/current/releases/download/v#{version}/Current-#{version}.zip"
  name "Current"
  desc "Daily notes in a single stream"
  homepage "https://github.com/iamrajjoshi/current"

  depends_on macos: ">= :sonoma"

  app "Current.app"
end
