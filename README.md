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

## Splash Finish

Requires macOS 14 or later, on Apple Silicon or Intel. Installs the app and the
`splash-finish` CLI from the signed, notarized universal release.

```sh
brew install --cask bobuk-io/tap/splash-finish
open "/Applications/Splash Finish.app"
splash-finish install-skills
```

If Homebrew asks for trust, run `brew trust --cask bobuk-io/tap/splash-finish`
and repeat the install. The app offers **Update Splash Finish via Homebrew…**;
Sparkle is disabled for Homebrew copies. You can also quit the app and run
`brew upgrade --cask --greedy bobuk-io/tap/splash-finish`, then reopen it.

Before uninstalling, disable **Start at Login**, run `splash-finish uninstall-skills`,
and quit the app. Then run `brew uninstall --cask bobuk-io/tap/splash-finish`.
The inbox and preferences remain unless you explicitly add `--zap`; agent
configuration backups are retained. See the [installation guide](https://bobuk.io/apps/splash-finish/support/)
for switching from the standalone installer while keeping your inbox.

## Maintenance

Ting's `Scripts/publish.sh` updates `Casks/ting.rb` after publishing a release.
Retry with `bash Scripts/update_homebrew.sh --publish` from the Ting checkout.
Splash Finish uses the same commands in its checkout to publish or retry
`Casks/splash-finish.rb` after a release.
No hosted CI is used.

Cask definitions and this documentation are available under the
[0BSD license](LICENSE). Applications retain their own licenses.
