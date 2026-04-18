cask "bullpen" do
  arch arm: "aarch64", intel: "f640566bf1038e8bb08ae65c1979d19ea84ca713a420d92cf43e9c6bc49bc43d"

  version "0.5.2"
  sha256 arm:   "f2fbe608125da9af2ffabbae4cee56960e8e687e421881863b475c987341c01a",
         intel: "f640566bf1038e8bb08ae65c1979d19ea84ca713a420d92cf43e9c6bc49bc43d"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
