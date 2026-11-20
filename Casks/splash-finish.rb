cask "splash-finish" do
  version "0.3.15"
  sha256 "4a70e93275231341d84537d84684b15540cd2ae6c6ff80a1702df271becd2abb"

  url "https://github.com/bobuk-io/splash-finish/releases/download/v#{version}/SplashFinish-#{version}-universal.zip"
  name "Splash Finish"
  desc "Shared inbox for AI agent notifications and questions"
  homepage "https://bobuk.io/apps/splash-finish/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Splash Finish.app"
  binary "#{appdir}/Splash Finish.app/Contents/MacOS/SplashFinish", target: "splash-finish"

  zap trash: [
    "~/Library/Application Support/Splash Finish",
    "~/Library/Caches/io.bobuk.splash-finish",
    "~/Library/Preferences/io.bobuk.splash-finish.plist",
    "~/Library/Saved Application State/io.bobuk.splash-finish.savedState",
  ]
end
