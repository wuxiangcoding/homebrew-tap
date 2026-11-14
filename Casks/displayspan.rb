cask "displayspan" do
  version "1.3.18,22"
  sha256 "a03f6e0fd9e3ad5e212da28293f628597e03023c10fb9e3aec4546c40657915b"

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
