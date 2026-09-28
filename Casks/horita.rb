cask "horita" do
  version "0.2.0"
  sha256 "9c5d8855840e1742415165e5b46be25be52220f9e9a9a02988b90fc38d4cf51e"

  url "https://dl.horita.app/v#{version}/Horita.dmg"
  name "horita"
  desc "Shows your next meeting and a countdown in the menu bar"
  homepage "https://horita.app"

  auto_updates true
  depends_on macos: :sonoma

  app "Horita.app"

  zap trash: [
    "~/Library/Caches/dev.liranbaba.Horita",
    "~/Library/HTTPStorages/dev.liranbaba.Horita",
    "~/Library/Preferences/dev.liranbaba.Horita.plist",
  ]
end
