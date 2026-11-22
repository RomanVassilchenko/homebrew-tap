# Homebrew tap for FortiBar

[FortiBar](https://github.com/RomanVassilchenko/FortiBar) is a macOS menu bar client for FortiGate SSL VPN, built on openfortivpn.

```bash
brew trust romanvassilchenko/tap
brew install --cask romanvassilchenko/tap/fortibar
```

Homebrew loads third-party taps only after `brew trust`, so the first line is needed once. This also installs [openfortivpn](https://formulae.brew.sh/formula/openfortivpn) and links the `fortibar` command line tool. Update with `brew upgrade --cask fortibar`; Homebrew quits FortiBar for the update and opens it again.

FortiBar is signed with a self-signed certificate and is not notarized, so macOS asks you to confirm the first launch: open **System Settings → Privacy & Security** and click **Open Anyway**.

Before uninstalling, remove the sudo rule in FortiBar → Settings → Permission → **Remove**, or uninstall with `brew uninstall --zap --cask fortibar`, which also deletes `/etc/sudoers.d/fortibar` (brew asks for your password), the settings and the logs. Saved passwords stay in the Keychain.

The cask is updated automatically by FortiBar's release workflow.
