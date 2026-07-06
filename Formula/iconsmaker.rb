# iconsmaker — https://github.com/ideocentric/iconsmaker
# Auto-generated per release by .github/workflows/release.yml and committed to the
# homebrew-tap repo. Do not hand-edit; it is overwritten on each release.
class Iconsmaker < Formula
  desc "Generate platform icon bundles (macOS, Windows, Linux) from a single SVG"
  homepage "https://github.com/ideocentric/iconsmaker"
  # Single universal (arm64 + x86_64) build — runs natively on both Apple Silicon
  # and Intel Macs. (Homebrew derives the version from the URL.)
  url "https://github.com/ideocentric/iconsmaker/releases/download/v0.1.2/iconsmaker-0.1.2-universal-apple-darwin.tar.gz"
  sha256 "947795b6998093c7e0003e3db4ce964a83de5fe9b8268c9aae007e9789ab2097"
  license "GPL-3.0-or-later"

  def install
    bin.install "iconsmaker"
    man1.install "iconsmaker.1"
  end

  test do
    assert_match "iconsmaker", shell_output("#{bin}/iconsmaker --version")
  end
end
