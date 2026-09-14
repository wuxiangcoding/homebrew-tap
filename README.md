# DisplaySpan Homebrew tap

Install DisplaySpan on macOS 14 or newer with Homebrew while the
`displayspan` cask is still pending in the official `homebrew/cask`.

```sh
brew tap wuxiangcoding/tap
brew install --cask displayspan
```

Or install directly without keeping the tap:

```sh
brew install --cask wuxiangcoding/tap/displayspan
```

The cask points to the same signed and notarized DMG as displayspan.app. It
will be retired once the official cask accepts `displayspan`, so existing
installs can then use `brew install --cask displayspan`.

Feedback and support: https://github.com/wuxiangcoding/displayspan
