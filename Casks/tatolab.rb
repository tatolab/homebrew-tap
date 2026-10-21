cask "tatolab" do
  version "0.54.11"
  sha256 "9d93f5c8268bab1bc4f5dc59a9637b5c02e2d01fd7d88a30b51129b4dc37082e"

  url "https://github.com/tatolab/streamlib/releases/download/v#{version}/Tatolab-#{version}-arm64.dmg"
  name "Tatolab"
  desc "Real-time streaming runtime for cameras, audio and GPU pipelines"
  homepage "https://tatolab.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Tatolab.app"

  uninstall launchctl: "com.tatolab.tatolabd",
            quit:      "com.tatolab.tatolab",
            delete:    [
              "/usr/local/bin/tatolab",
              "/Library/Application Support/Tatolab",
            ]

  zap trash: [
    "~/Library/Application Support/com.tatolab.tatolab",
    "~/Library/Application Support/Tatolab",
    "~/Library/Caches/com.tatolab.tatolab",
    "~/Library/Preferences/com.tatolab.tatolab.plist",
  ]
end
