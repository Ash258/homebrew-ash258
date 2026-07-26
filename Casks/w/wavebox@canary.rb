cask "wavebox@canary" do
  arch arm: "arm64"

  version "151.2.135.4"
  sha256 arm:   "14983373dda78fd8bdf9e0e995c35eaaa6c5564f2ce6d5be52954ca77d14f294",
         intel: "e1c7d04431a8ed5a4a8bf6554da68d43a5c8bd0503c2d8a4a8f340fab79dc548"

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
  depends_on macos: :ventura

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
