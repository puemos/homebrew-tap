cask "bullpen" do
  arch arm: "aarch64", intel: "f640566bf1038e8bb08ae65c1979d19ea84ca713a420d92cf43e9c6bc49bc43d"

  version "0.5.2"
  sha256 arm:   "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5",
         intel: "f640566bf1038e8bb08ae65c1979d19ea84ca713a420d92cf43e9c6bc49bc43d"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
