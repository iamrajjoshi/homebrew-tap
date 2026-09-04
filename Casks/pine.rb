cask "pine" do
  version "0.1.0+15"
  sha256 "48b8d6fe7ec52395541b5e5e41690f70fa2b1a9fcb50447ac5c2619a5d7c1f3b"

  github_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", nil)
  url "https://api.github.com/repos/iamrajjoshi/pine/releases/assets/543793415?version=#{version}",
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
