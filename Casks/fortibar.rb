cask "fortibar" do
  version "1.5.1"
  sha256 "bcd551dbefba956ca73d02135a579de58a92360b33618ff5c7593430382f3625"

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
