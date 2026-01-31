cask "wavebox@beta" do
  arch arm: "arm64"

  version "10.144.72.3"
  sha256 arm:   "bb22e9fb0d7a1ca3442921a2e3a8c373ac78f57733f6f521cde1ef8ebd399e25",
         intel: "6c6dcfbbf6b0c3c3b8a620555fb47ef9dc2e3a1747b2ca67635097ed0072c358"

  url "https://download.wavebox.app/beta/mac#{arch}/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
  name "Wavebox Beta"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/latest/beta/mac"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "wavebox"
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
