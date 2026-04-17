cask "bullpen" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
