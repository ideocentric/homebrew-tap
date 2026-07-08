# iconsmaker — https://github.com/ideocentric/iconsmaker
# Auto-generated per release by .github/workflows/release.yml and committed to the
# homebrew-tap repo. Do not hand-edit; it is overwritten on each release.
class Iconsmaker < Formula
  desc "Generate platform icon bundles (macOS, Windows, Linux) from a single SVG"
  homepage "https://github.com/ideocentric/iconsmaker"
  # Single universal (arm64 + x86_64) build — runs natively on both Apple Silicon
  # and Intel Macs. (Homebrew derives the version from the URL.)
  url "https://github.com/ideocentric/iconsmaker/releases/download/v0.1.3/iconsmaker-0.1.3-universal-apple-darwin.tar.gz"
  sha256 "82a4fd2200e91dd558b1d13c47c9c5d12e19799def53686930f91fe4590cb5fb"
  license "GPL-3.0-or-later"

  def install
    bin.install "iconsmaker"
    man1.install "iconsmaker.1"
  end

  test do
    assert_match "iconsmaker", shell_output("#{bin}/iconsmaker --version")
  end
end
