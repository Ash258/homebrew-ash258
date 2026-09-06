cask "goodaccess" do
  version "4.7.14"
  sha256 "2905a1d9fce5e70db92c31640393dbe738ff16747eb01afc48f2f3c2d0df1057"

  url "https://goodaccess-storage.b-cdn.net/applications/prod/macOS/GoodAccess_#{version}.dmg"
  name "GoodAccess"
  desc "Secure Remote Access VPN"
  homepage "https://www.goodaccess.com/"

  livecheck do
    url "https://link.goodaccess.com/download-mac-link"
    strategy :header_match
    regex(%r{/GoodAccess[._-]v?([\d.]+)\.dmg}i)
  end

  depends_on macos: :sonoma

  app "GoodAccess.app"

  uninstall quit: "com.samohyb.GoodAccessMac"

  zap trash: [
    "~/Library/Application Support/GoodAccess",
    "~/Library/Caches/com.samohyb.GoodAccessMac",
    "~/Library/Caches/SentryCrash/GoodAccess",
    "~/Library/Preferences/com.samohyb.GoodAccessMac.plist",
  ]
end
