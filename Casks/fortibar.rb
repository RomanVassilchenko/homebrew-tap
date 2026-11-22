cask "fortibar" do
  version "1.5.0"
  sha256 "1843a3179509355d213d095be5297f768b4dd00b6507e4b3c9eb9297fdc6cd72"

  url "https://github.com/RomanVassilchenko/FortiBar/releases/download/v#{version}/FortiBar_v#{version}.dmg"
  name "FortiBar"
  desc "Menu bar client for FortiGate SSL VPN, built on openfortivpn"
  homepage "https://romanvassilchenko.github.io/FortiBar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "openfortivpn"
  depends_on macos: :ventura

  app "FortiBar.app"
  binary "#{appdir}/FortiBar.app/Contents/MacOS/FortiBar", target: "fortibar"

  uninstall quit:   "com.romanvassilchenko.FortiBar",
            delete: "/etc/sudoers.d/fortibar"

  zap trash: [
    "~/Library/Application Support/FortiBar",
    "~/Library/Logs/FortiBar",
  ]
end
