cask "typeseer" do
  version "1.6.3"
  sha256 "5bf0001626b36bc9747de03d75de427fad378bc821f81f62b636b0ba8a797336"

  url "https://typeseer.com/downloads/TypeSeer-#{version}.dmg"
  name "TypeSeer"
  desc "Finishes your sentences as you type"
  homepage "https://typeseer.com/"

  livecheck do
    url "https://typeseer.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TypeSeer.app"

  zap trash: [
    "~/Library/Application Support/TypeSeer",
    "~/Library/Caches/com.nimbus.app",
    "~/Library/Caches/com.nimbus.app.sparkle",
    "~/Library/Caches/TypeSeer",
    "~/Library/HTTPStorages/com.nimbus.app",
    "~/Library/HTTPStorages/TypeSeer",
    "~/Library/Preferences/com.nimbus.app.plist",
    "~/Library/WebKit/com.nimbus.app",
  ]
end
