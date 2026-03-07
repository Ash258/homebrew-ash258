cask "atoll" do
  version "2.0.0"
  sha256 "6866b917173c14411d11d6ee72a1d774fca6c4ab2f0db2ed833f47ec0ed21efd"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll.#{version}.dmg",
      verified: "github.com/Ebullioscopic/Atoll/"
  name "Atoll"
  desc "Dynamic Island"
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
