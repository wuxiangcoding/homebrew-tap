cask "displayspan" do
  version "1.3.17,21"
  sha256 "4ed0a2133e27aaf86dd5cb8600ed8c9c457b5d38e4f8d59aafd82b42545371ec"

  url "https://displayspan.app/downloads/DisplaySpan-#{version.csv.first}-#{version.csv.second}.dmg"
  name "DisplaySpan"
  desc "Fix mouse crossing between displays and restore monitor layouts"
  homepage "https://displayspan.app/"

  livecheck do
    url "https://displayspan.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DisplaySpan.app"

  uninstall quit: "com.displayflow.DisplayFlow"

  zap trash: [
    "~/Library/Application Support/DisplayFlow",
    "~/Library/Preferences/com.displayflow.DisplayFlow.plist",
  ]
end
