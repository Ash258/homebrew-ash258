cask "wavebox@canary" do
  arch arm: "arm64"

  version "10.144.72.4"
  sha256 arm:   "5b60487ced3374a78cd90384617b4e5a3b7ad3880ef9ea283fade361c472890c",
         intel: "641016487e51648e45b09fe86b30bcfd8e304a511ddd3f012e5e8f188523b4c0"

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
