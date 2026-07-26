cask "nayaflow" do
  version "1.25.1"
  sha256 "6daad9228e601ab1bde0313be87abb69bb8f63a2585f3f54850f4303c6cb69c9"

  url "https://github.com/NayaTech/NayaFlow-releases/releases/download/v#{version}/NayaFlow-arm64.dmg",
      verified: "github.com/"
  name "Naya Flow"
  desc "Dedicated software used to program and customize your Naya keyboard and modules"
  homepage "https://naya.tech/pages/naya-flow"

  depends_on macos: :monterey

  app "NayaFlow.app"

  zap trash: [
    "~/Library/Application Support/NayaFlow",
    "~/Library/Logs/NayaFlow",
  ]
end
