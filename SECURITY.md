# Security Policy

## Reporting a vulnerability

Please use [private vulnerability reporting](https://github.com/RomanVassilchenko/homebrew-tap/security/advisories/new) instead of opening a public issue.

## Supply chain

- `Casks/fortibar.rb` pins the SHA-256 of every release artifact; `brew` verifies it on install.
- CI runs `brew style` and `brew audit --strict --online` on every pull request, and CodeQL scans the repository.
- Actions in workflows are pinned by commit SHA; Dependabot keeps them current.
- `main` is protected: changes land only through a pull request whose required checks pass.
