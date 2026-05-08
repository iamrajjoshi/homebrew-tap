cask "current" do
  version "0.2.0"
  sha256 "56cd64e31ee435e11f71b4a9c06c8dec2ce32398544902dc28e8ba39e2cbb892"

  url "https://github.com/iamrajjoshi/current/releases/download/v#{version}/Current-#{version}.zip"
  name "Current"
  desc "Daily notes in a single stream"
  homepage "https://github.com/iamrajjoshi/current"

  depends_on macos: ">= :sonoma"

  app "Current.app"
end
