cask "tatolab" do
  version "0.46.3"
  sha256 "1e8855ccd11d66433a7f9a7bf55d49ee475ca823a48f7a1f3126f3fded97fd82"

  url "https://github.com/tatolab/streamlib/releases/download/v#{version}/Tatolab-#{version}-arm64.dmg"
  name "Tatolab"
  desc "Real-time streaming runtime for cameras, audio and GPU pipelines"
  homepage "https://tatolab.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
