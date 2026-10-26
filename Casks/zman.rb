cask "zman" do
  version "1.2.2"
  sha256 "a6b582b0e74ba3912e75125219b743d87491039650a7d12e468d8ee3938ff2b1"

  url "https://github.com/plavrenko/zman/releases/download/v1.2.2/Zman-claude-1.2.2.zip"
  name "Zman"
  desc "Highlights Calendar.app when viewing timezone differs from team timezone"
  homepage "https://github.com/plavrenko/zman"

  depends_on macos: ">= :tahoe"

  app "Zman-claude.app"

  caveats <<~EOS
    Zman is not notarized. After installation, remove the quarantine attribute:
      xattr -cr "#{appdir}/Zman-claude.app"
  EOS
end
