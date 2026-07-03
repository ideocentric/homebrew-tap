# ideocentric/homebrew-tap

Homebrew tap for [iconsmaker](https://github.com/ideocentric/iconsmaker) —
generate platform icon bundles (macOS, Windows, Linux) from a single SVG.

## Install

```bash
brew tap ideocentric/tap
brew install iconsmaker
```

## Notes

- `Formula/iconsmaker.rb` installs a **universal** macOS binary (Apple Silicon +
  Intel) plus its man page.
- The formula is generated per release by iconsmaker's
  [release workflow](https://github.com/ideocentric/iconsmaker/blob/main/.github/workflows/release.yml);
  each new tagged release updates the `url`/`sha256`/`version`.