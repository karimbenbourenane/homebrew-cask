cask "en-croissant" do
  version "0.10.0"
  sha256 "53ce5c7b19ea272a1fda033d7e60f5595183bfd3dd7964a41a84fea170d8c57a"

  url "https://github.com/franciscoBSalgueiro/en-croissant/releases/download/v#{version}/en-croissant_#{version}_x64.dmg",
      verified: "github.com/franciscoBSalgueiro/en-croissant/"
  name "En Croissant"
  desc "Open-source, cross-platform chess GUI"
  homepage "https://encroissant.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "en-croissant.app"

  zap trash: [
    "~/Library/Application Support/org.encroissant.app",
    "~/Library/Caches/org.encroissant.app",
    "~/Library/Logs/org.encroissant.app",
    "~/Library/Saved Application State/org.encroissant.app.savedState",
    "~/Library/WebKit/org.encroissant.app",
  ]
end
