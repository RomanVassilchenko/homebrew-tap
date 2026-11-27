cask "fortibar" do
  version "1.8.1"
  sha256 "c9d85850f69f328dfc902c540292604eaf389056d6ce1d46f0c4c2ed1df58594"

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

  # Upgrades run the old version's uninstall: keep the sudo rule here, only --zap removes it
  uninstall quit: "com.romanvassilchenko.FortiBar"

  zap delete: "/etc/sudoers.d/fortibar",
      trash:  [
        "~/Library/Application Support/FortiBar",
        "~/Library/Logs/FortiBar",
      ]
end
