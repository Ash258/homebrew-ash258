cask "wavebox@canary" do
  arch arm: "arm64"

  version "10.144.64.4"
  sha256 arm:   "36508572c39a5a5ad033f32997bf26752823c701f2bae4de1e28e3952c97e3c0",
         intel: "a20f6666b6612121b5eb562a1da65f85b64ec83ac35e89b05bb7ba316e76a63c"

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
