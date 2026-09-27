cask "horita" do
  version "0.1.0"
  sha256 "9ceb0be82718863256f43c34b38b805407365e696471b8d836f29aa91559ad40"

  url "https://dl.horita.app/v#{version}/Horita.dmg"
  name "horita"
  desc "Shows your next meeting and a countdown in the menu bar"
  homepage "https://horita.app"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Horita.app"

  zap trash: [
    "~/Library/Caches/dev.liranbaba.Horita",
    "~/Library/HTTPStorages/dev.liranbaba.Horita",
    "~/Library/Preferences/dev.liranbaba.Horita.plist",
  ]
end
