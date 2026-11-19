cask "ting" do
  version "0.7.16"
  sha256 "c2dd7db603497318ca81b670553f1778f14c5b94d78b54d040965a229d2c8b54"

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
