cask "wavebox@canary" do
  arch arm: "arm64"

  version "10.146.5.4"
  sha256 arm:   "ea0e0714ac314dcb8ebffc52e72de4e2fa88c7118d0c71774bc72a9ed2ec6abc",
         intel: "dd0b0146480779d1fa7ef1515e9fb135b69c1faa2a5067391690da6f1e8d41e6"

  url "https://download.wavebox.app/canary/mac#{arch}/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
  name "Wavebox (Canary)"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/latest/canary/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Wavebox.app"

  uninstall quit: "io.wavebox.wavebox"

  zap trash: [
    "~/Library/Application Support/WaveboxApp",
    "~/Library/Caches/com.bookry.wavebox",
    "~/Library/Caches/WaveboxApp",
    "~/Library/Preferences/com.bookry.wavebox.plist",
    "~/Library/Saved Application State/com.bookry.wavebox.savedState",
  ]
end
