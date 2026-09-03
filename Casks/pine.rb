cask "pine" do
  version "0.1.0+12"
  sha256 "05fdbeb6eebe0ff16d8ddedea21e4f3a4a1d2d64e724028baa3d9d332ef161e9"

  github_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", nil)
  url "https://api.github.com/repos/iamrajjoshi/pine/releases/assets/542282700?version=#{version}",
      header: [
        "Accept: application/octet-stream",
        github_token && "Authorization: Bearer #{github_token}",
        "X-GitHub-Api-Version: 2022-11-28",
      ].compact
  name "Pine"
  desc "Terminal-only local-first multi-model coding harness"
  homepage "https://github.com/iamrajjoshi/pine"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  container type: :zip

  binary "pine"
end
