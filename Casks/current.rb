cask "current" do
  version "0.3.1"
  sha256 "b2db3ab7ad7ce480f57aa25c71ad5b3723c5a443e6f7e8d42ea9ecf8e01d935e"

  url "https://github.com/iamrajjoshi/current/releases/download/v#{version}/Current-#{version}.zip"
  name "Current"
  desc "Daily Markdown notes organized in streams"
  homepage "https://github.com/iamrajjoshi/current"

  depends_on macos: :sonoma

  app "Current.app"
end
