cask "displayspan" do
  version "1.3.16,20"
  sha256 "f191d25393422a67ecfff08be9599d3665b2b0e6cd528ad1b0b3a1cc3be98444"

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
