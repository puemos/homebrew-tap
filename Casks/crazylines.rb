cask "crazylines" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/puemos/crazylines/releases/download/v#{version}/Crazylines_#{arch}.app.tar.gz"
  name "Crazylines"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/crazylines"

  depends_on macos: ">= :big_sur"

  app "Crazylines.app"
  binary "#{appdir}/Crazylines.app/Contents/MacOS/crazylines"
end
