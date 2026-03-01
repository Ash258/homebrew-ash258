cask "wavebox@beta" do
  arch arm: "arm64"

  version "10.145.41.3"
  sha256 arm:   "e7cd115199f588d6aff508c34a3ad937476bbd126fed7a1510d700041196a9bc",
         intel: "edfcd2b8b3451970a555348374f69e044591a46f82f412545f9fbf330158ae1b"

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
