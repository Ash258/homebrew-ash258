cask "nayaflow" do
  version "1.15.0"
  sha256 "735fa10abdcad85f72c9cdad140aab53045e4c764c016c6e9776158e6a774c68"

  url "https://github.com/NayaTech/NayaFlow-releases/releases/download/v#{version}/NayaFlow-arm64.dmg",
      verified: "github.com/"
  name "Naya Flow"
  desc "Dedicated software used to program and customize your Naya keyboard and modules"
  homepage "https://naya.tech/pages/naya-flow"

  depends_on macos: ">= :tahoe"

  app "NayaFlow.app"

  zap trash: [
    "~/Library/Application Support/NayaFlow",
    "~/Library/Logs/NayaFlow",
  ]
end
