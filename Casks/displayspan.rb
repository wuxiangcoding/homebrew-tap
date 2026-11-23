cask "displayspan" do
  version "1.4.0,23"
  sha256 "ebc98db93d357f289a8c8455f4522ffd40515920482bd26dc540ec79a1dda42a"

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
