cask "nayaflow" do
  version "1.17.3"
  sha256 "be1e8cf23389c2e9b49144bb9d8bd114eb12db1388c38d86a945651e83fa40e3"

  url "https://github.com/NayaTech/NayaFlow-releases/releases/download/v#{version}/NayaFlow-arm64.dmg",
      verified: "github.com/"
  name "Naya Flow"
  desc "Dedicated software used to program and customize your Naya keyboard and modules"
  homepage "https://naya.tech/pages/naya-flow"

  depends_on macos: ">= :monterey"

  app "NayaFlow.app"

  zap trash: [
    "~/Library/Application Support/NayaFlow",
    "~/Library/Logs/NayaFlow",
  ]
end
