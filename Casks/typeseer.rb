cask "typeseer" do
  version "1.6.6"
  sha256 "ff8f6a433f04a9f21be1035604b54f79ffd8aa0886404abaa83c3bc28f3406fa"

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
