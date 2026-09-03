cask "pine" do
  version "0.1.0+9"
  sha256 "afafb54b88b18827d60888da1d4ad004894fc17045885ed95d7d3f6da858ecc7"

  github_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", nil)
  url "https://api.github.com/repos/iamrajjoshi/pine/releases/assets/542199970?version=#{version}",
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
