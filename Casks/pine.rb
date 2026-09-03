cask "pine" do
  version "0.1.0+8"
  sha256 "6273671173500b4c18b012f579fe547b6da1aedc6d9192d6a3120c2dcf14c077"

  github_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", nil)
  url "https://api.github.com/repos/iamrajjoshi/pine/releases/assets/542147803?version=#{version}",
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
