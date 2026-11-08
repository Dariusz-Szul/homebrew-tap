cask "typeseer" do
  version "1.6.4"
  sha256 "a22f3ad8c13afe2b16b851fc95b0a04d59084f20a03d30f1088fa4f6dcf12960"

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
