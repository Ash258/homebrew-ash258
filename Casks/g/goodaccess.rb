cask "goodaccess" do
  version "4.7.0"
  sha256 "fa74bf46c05b40f2ff6715844331de05f93b0253dd07b9852cae7b4762d6beb2"

  url "https://goodaccess-storage.b-cdn.net/applications/prod/macOS/GoodAccess_#{version}.dmg",
      verified: "goodaccess-storage.b-cdn.net/"
  name "GoodAccess"
  desc "Secure Remote Access VPN"
  homepage "https://www.goodaccess.com/"

  livecheck do
    url "https://link.goodaccess.com/download-mac-link"
    strategy :header_match
    regex(%r{/GoodAccess[._-]v?([\d.]+)\.dmg}i)
  end

  depends_on macos: ">= :tahoe"

  app "GoodAccess.app"
  uninstall quit: "com.samohyb.GoodAccessMac"

  zap trash: [
    "~/Library/Application Support/GoodAccess",
    "~/Library/Caches/com.samohyb.GoodAccessMac",
    "~/Library/Caches/SentryCrash/GoodAccess",
    "~/Library/Preferences/com.samohyb.GoodAccessMac.plist",
  ]
end
