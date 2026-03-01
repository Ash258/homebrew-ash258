cask "atoll" do
  version "1.3.0-beta"
  sha256 "9d4f210f379cb33a1d60f4e8088e0e03e08b4f45140b051914274bb22ab59d5f"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll.#{version}.dmg",
      verified: "github.com/Ebullioscopic/Atoll/"
  name "Atoll"
  desc "Dynamic Island for macOS"
  homepage "https://getatoll.app/"

  livecheck do
    strategy :git
  end

  depends_on macos: ">= :sonoma"

  app "Atoll.app"
  uninstall quit: "com.Ebullioscopic.Atoll"

  zap trash: [
    "~/Library/Caches/com.Ebullioscopic.Atoll",
    "~/Library/HTTPStorages/com.Ebullioscopic.Atoll",
    "~/Library/Preferences/com.Ebullioscopic.Atoll.plist",
  ]
end
