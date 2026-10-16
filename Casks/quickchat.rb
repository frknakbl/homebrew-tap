cask "quickchat" do
  version "2.4.8"
  sha256 "5a24ca5d81a4cacdd8beefe82df8a4d0757e06aacc80e2217f6394cbf517185f"

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
