cask "displayspan" do
  version "1.3.14,18"
  sha256 "64cda1e512212da0b3792b64a387bc0ff68d6b2d5a07ece769a3f31d06a99e3f"

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
