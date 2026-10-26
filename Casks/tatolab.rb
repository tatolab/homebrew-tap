cask "tatolab" do
  version "0.55.4"
  sha256 "74c558079528685990a118ae5ca20c9b431f7def3d86c98550ddbbec24f3a0ca"

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
              "~/.local/bin/tatolab",
              "/usr/local/bin/tatolab",
            ]

  zap trash: [
    "~/Library/Application Support/com.tatolab.tatolab",
    "~/Library/Application Support/Tatolab",
    "~/Library/Caches/com.tatolab.tatolab",
    "~/Library/Preferences/com.tatolab.tatolab.plist",
  ]
end
