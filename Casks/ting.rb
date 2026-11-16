cask "ting" do
  version "0.7.3"
  sha256 "a76022acc1e6a9e04c299a382d60572ba515d8d0a828fbea74a7ffb64780ce5d"

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
