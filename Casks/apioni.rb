cask "apioni" do
  version "0.1.0"
  sha256 "7927fc0943fa73674a6d367eb1bd7940733fedd51127f73159ad243c938f4c30"

  url "https://github.com/flowlab-works/apioni-ide/releases/download/desktop-v#{version}/Apioni.IDE_#{version}_universal.dmg",
      verified: "github.com/flowlab-works/apioni-ide/"
  name "Apioni IDE"
  desc "Lightweight terminal for running AI CLIs"
  homepage "https://apioni.com/ide"

  depends_on macos: ">= :big_sur"

  app "Apioni IDE.app"

  zap trash: [
    "~/Library/Application Support/com.apioni.ide",
    "~/Library/Caches/com.apioni.ide",
    "~/Library/Preferences/com.apioni.ide.plist",
    "~/Library/Saved Application State/com.apioni.ide.savedState",
  ]
end
