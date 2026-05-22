cask "lattice" do
  version "0.7"
  sha256 "5add3673ed9597eb35ca7370a504da703a241ba62bdefdd017742bf2396bed88"

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
