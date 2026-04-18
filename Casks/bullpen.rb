cask "bullpen" do
  arch arm: "aarch64", intel: "66cb51cfd30dc56fe8e4026e328b2674f06e4e224eb566123c7c51ddef58e557"

  version "0.3.4"
  sha256 arm:   "53db2f365a0ffcbcf2abc227ce9191c855c15153fc9af8f1e0458222000ef710",
         intel: "66cb51cfd30dc56fe8e4026e328b2674f06e4e224eb566123c7c51ddef58e557"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
