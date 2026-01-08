cask "nayaflow" do
  version "1.15.1"
  sha256 "06f1377c2f05e327f784ddecac6bf7411cb4bbfd1707680f33c3bd723c714f64"

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
