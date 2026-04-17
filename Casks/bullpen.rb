cask "bullpen" do
  arch arm: "aarch64", intel: "27e2bde607a42930ff32d712e1ef2c9f4f464ddf6801aafb4b3a45666caf8903"

  version "0.3.1"
  sha256 arm:   "eb694b2fad0b38e855ccd0c65731618994c28254036d9b1284aec373f05cb280",
         intel: "27e2bde607a42930ff32d712e1ef2c9f4f464ddf6801aafb4b3a45666caf8903"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
