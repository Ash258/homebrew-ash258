cask "wavebox@beta" do
  arch arm: "arm64"

  version "10.143.24.3"
  sha256 arm:   "3f2e5018ed31c5dfc570ba480bd3a4084849d1477d1918409a12783ddc0f931b",
         intel: "dc99436415f49c28f32da87490b3f6026ffab539cc09eadfeeb057461cd93581"

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
