cask "ting" do
  version "0.7.27"
  sha256 "ba202ad478f3700b9f0467aa9dcb79d70fe736f878fcd88dc41aba70664de526"

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
