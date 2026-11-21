cask "zephone" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "938869c08afc4a4f3f3d76f8c403ac9de6dc2f4d6a81a4cb76e66a7ecf1af690",
         intel: "d011ae4fd008d665cd00172214fb3d2025415239c543b2e32177b67bff3bca24"

  url "https://github.com/Zenoova/ZePhone/releases/download/v#{version}/ZePhone_#{version}_#{arch}.dmg",
      verified: "github.com/Zenoova/ZePhone/"
  name "ZePhone"
  desc "Universal SIP softphone"
  homepage "https://github.com/Zenoova/ZePhone"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ZePhone.app"

  zap trash: [
    "~/Library/Application Support/com.zenoova.zephone",
    "~/Library/Caches/com.zenoova.zephone",
    "~/Library/Preferences/com.zenoova.zephone.plist",
  ]
end
