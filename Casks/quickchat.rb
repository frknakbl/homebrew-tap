cask "quickchat" do
  version "2.4.8"
  sha256 "4d7d450baaabddc0b7a024967b7da6f0da03227ae5e7d2d1ae65e59ea02e218e"

  url "https://github.com/frknakbl/quickchat-app/releases/download/v#{version}/QuickChat-#{version}-universal.zip"
  name "QuickChat"
  desc "Floating ChatGPT window with a global keyboard shortcut"
  homepage "https://github.com/frknakbl/quickchat-app"

  depends_on macos: :ventura

  app "QuickChat.app"

  uninstall quit: "local.tools.QuickChat"

  caveats <<~EOS
    This preview is ad-hoc signed and has not been notarized by Apple.
    macOS may block the first launch. See the installation notes on the homepage.
  EOS
end
