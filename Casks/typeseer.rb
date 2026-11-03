cask "typeseer" do
  version "1.5.7"
  sha256 "c51f370471365d13816941aa2ffac8ec97444880d92f8f5ec602aafec1b01307"

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
