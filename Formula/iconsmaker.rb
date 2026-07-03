# iconsmaker — https://github.com/ideocentric/iconsmaker
# Generated per release by iconsmaker's release workflow from
# packaging/homebrew/iconsmaker.rb.tmpl. Bump by cutting a new tagged release,
# not by hand-editing.
class Iconsmaker < Formula
  desc "Generate platform icon bundles (macOS, Windows, Linux) from a single SVG"
  homepage "https://github.com/ideocentric/iconsmaker"
  version "0.1.0"
  license "GPL-3.0-or-later"

  # Single universal (arm64 + x86_64) build — runs natively on both Apple Silicon
  # and Intel Macs.
  url "https://github.com/ideocentric/iconsmaker/releases/download/v0.1.0/iconsmaker-0.1.0-universal-apple-darwin.tar.gz"
  sha256 "ff2f7991fd5e16a7fd5d1942c27d8b2a8a2d267856e33244ae510bb867aa0df7"

  def install
    bin.install "iconsmaker"
    man1.install "iconsmaker.1"
  end

  test do
    assert_match "iconsmaker", shell_output("#{bin}/iconsmaker --version")
  end
end