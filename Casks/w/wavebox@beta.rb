cask "wavebox@beta" do
  arch arm: "arm64"

  version "10.143.17.3"
  sha256 arm:   "9c6353caaad8edcc9c3810d991959b1de1f463ab1585fea84fab55efad89bfd3",
         intel: "4b1ac589ea1f967ece93a706a47569f4583ceebbd3852a3c1c9a7cb8fe10a7fd"

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
