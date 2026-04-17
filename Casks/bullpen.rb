cask "bullpen" do
  arch arm: "aarch64", intel: "dffc1692bd777da4bd5cf08a980253ac23ea4b18c8af9f642db056ee14b3ecde"

  version "0.3.3"
  sha256 arm:   "32ca49e95ad22717888341dc18099ecc380646071276a2d2323c5f7166ffbee6",
         intel: "dffc1692bd777da4bd5cf08a980253ac23ea4b18c8af9f642db056ee14b3ecde"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
