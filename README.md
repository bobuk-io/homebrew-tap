# bobuk-io Homebrew tap

Official Homebrew casks for bobuk-io macOS apps.

## Ting

Requires macOS 14 or later, on Apple Silicon or Intel.

```sh
brew install --cask bobuk-io/tap/ting
open /Applications/Ting.app
```

If Homebrew asks you to trust the cask, run
`brew trust --cask bobuk-io/tap/ting`, then repeat the install command.

The cask downloads the signed and notarized universal archive from
[Ting releases](https://github.com/bobuk-io/ting/releases), verified with SHA-256.
Ting also supports built-in Sparkle updates. To update with Homebrew instead,
quit Ting, run `brew upgrade --cask --greedy bobuk-io/tap/ting`, then reopen it.

If Ting is already installed manually, keep using its built-in updates or use
`brew install --cask --adopt bobuk-io/tap/ting` to adopt an identical copy.
Homebrew will refuse to adopt a different version. Do not use `--force`.

## Uninstall

Turn off Ting's launch-at-login setting and quit it, then run:

```sh
brew uninstall --cask bobuk-io/tap/ting
```

Your data is kept. Add `--zap` only if you also want to delete settings,
bindings, micro-apps, their approvals and remembered values, and usage history.

## Maintenance

Ting's `Scripts/publish.sh` updates `Casks/ting.rb` after publishing a release.
Retry with `bash Scripts/update_homebrew.sh --publish` from the Ting checkout.
No hosted CI is used.

Cask definitions and this documentation are available under the
[0BSD license](LICENSE). Applications retain their own licenses.
