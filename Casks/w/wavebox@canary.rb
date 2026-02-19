cask "wavebox@canary" do
  arch arm: "arm64"

  version "10.145.29.4"
  sha256 arm:   "646094d982b2bde04e6c13fcee5b9f6ba2fc8fb52423bcd5b7c83b8b3aa0482b",
         intel: "956562912e75866f23d5b3973ef3c48969c91d577b8845abad544b9b76ff29c6"

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
