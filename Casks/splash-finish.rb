cask "splash-finish" do
  version "0.3.13"
  sha256 "dcc435e66cb33913e5621e79e0b234c5b96aea60f055b358e9976103d1c2ef2c"

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
