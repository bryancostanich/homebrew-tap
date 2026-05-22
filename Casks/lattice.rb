cask "lattice" do
  version "0.8"
  sha256 "8246afbb58c215761506d50f99313632f66269d3645db71fc10d8ef9ed0496cf"

  url "https://github.com/bryancostanich/lattice/releases/download/v#{version}/Lattice-v#{version}.zip"
  name "Lattice"
  desc "Grid-based navigation for Spaces"
  homepage "https://github.com/bryancostanich/lattice"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sonoma

  app "Lattice.app"

  zap trash: [
    "/tmp/lattice.log",
    "~/.config/lattice",
    "~/Library/Preferences/net.wowzer.lattice.plist",
  ]
end
