cask "fortibar" do
  version "1.7.0"
  sha256 "c344eac18614387aa826d1c8abf433c4d7df03812b9fc7280f2e29d3247b43bb"

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
