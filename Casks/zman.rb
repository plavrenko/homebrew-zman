cask "zman" do
  version "1.2.1"
  sha256 "1aec03e42af25191463adfd1aadde1722c5d6132ec45a0960a849e8199d79348"

  url "https://github.com/plavrenko/zman/releases/download/v1.2.1/Zman-claude-1.2.1.zip"
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
