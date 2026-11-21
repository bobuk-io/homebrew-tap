cask "ting" do
  version "0.7.18"
  sha256 "465f1694dd2dbcdc36a83df712a0effd988756dddf292460d92540d3e717aa7f"

  url "https://github.com/bobuk-io/ting/releases/download/v#{version}/Ting-#{version}-universal.zip"
  name "Ting"
  desc "Leader-key launcher for apps and URLs"
  homepage "https://bobuk.io/apps/ting/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Ting.app"

  zap trash: [
    "~/.config/ting",
    "~/Library/Application Support/Ting",
    "~/Library/Caches/io.bobuk.ting",
    "~/Library/Preferences/io.bobuk.ting.plist",
    "~/Library/Saved Application State/io.bobuk.ting.savedState",
  ]
end
