cask "wavebox@beta" do
  arch arm: "arm64"

  version "10.144.14.3"
  sha256 arm:   "4af75014f767aaae8a5b7f801c6e36113982ab7262c5d344dec2ef096b27eaaf",
         intel: "614b1382284681eb5516b16a5898767d49097ec3b7e2c8351b9176ed9fa704bd"

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
