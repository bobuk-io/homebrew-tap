cask "ting" do
  version "0.7.12"
  sha256 "359717517680a8f3bfce7d5a08696d1b47aa729a4f0cc2e574529b1d2d6842d0"

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
