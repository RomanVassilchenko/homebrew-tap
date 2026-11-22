# Homebrew tap for FortiBar

[FortiBar](https://github.com/RomanVassilchenko/FortiBar) is a macOS menu bar client for FortiGate SSL VPN, built on openfortivpn.

```bash
brew trust romanvassilchenko/tap
brew install --cask romanvassilchenko/tap/fortibar
```

Homebrew loads third-party taps only after `brew trust`, so the first line is needed once. This also installs [openfortivpn](https://formulae.brew.sh/formula/openfortivpn) and links the `fortibar` command line tool. Update with `brew upgrade --cask fortibar`.

FortiBar is signed with a self-signed certificate and is not notarized, so macOS asks you to confirm the first launch: open **System Settings → Privacy & Security** and click **Open Anyway**.

`brew uninstall --cask fortibar` also removes the app's sudo rule (`/etc/sudoers.d/fortibar`, brew asks for your password). Add `--zap` to delete the settings and logs too; saved passwords stay in the Keychain.

The cask is updated automatically by FortiBar's release workflow.
