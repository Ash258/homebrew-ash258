cask "wavebox@canary" do
  arch arm: "arm64"

  version "10.146.4.4"
  sha256 arm:   "a6b308195420a0cb4cdd5758114e7f2b178c1090800f630151440e40c972f4b6",
         intel: "c1a2ea9142d0190d4f58da68607f6e5c8ff838703b78316e4c17765023b9d28f"

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
