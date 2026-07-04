# iconsmaker — https://github.com/ideocentric/iconsmaker
# Generated per release by iconsmaker's release workflow from
# packaging/homebrew/iconsmaker.rb.tmpl. Bump by cutting a new tagged release,
# not by hand-editing.
class Iconsmaker < Formula
  desc "Generate platform icon bundles (macOS, Windows, Linux) from a single SVG"
  homepage "https://github.com/ideocentric/iconsmaker"
  # Single universal (arm64 + x86_64) build — runs natively on both Apple Silicon
  # and Intel Macs. (Homebrew derives the version from the URL.)
  url "https://github.com/ideocentric/iconsmaker/releases/download/v0.1.1/iconsmaker-0.1.1-universal-apple-darwin.tar.gz"
  sha256 "567c0a20ba13fafd75d2c709389a5c034a197f9af37de682c596f6dd97c6f236"
  license "GPL-3.0-or-later"

  def install
    bin.install "iconsmaker"
    man1.install "iconsmaker.1"
  end

  test do
    assert_match "iconsmaker", shell_output("#{bin}/iconsmaker --version")
  end
end
