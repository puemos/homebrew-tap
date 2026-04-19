cask "bullpen" do
  arch arm: "aarch64", intel: "2276455c2e14b3c6f458894dcc6fbf8453ec7f7d276f1170d94ea8cfd0a68551"

  version "0.5.3"
  sha256 arm:   "f6e93cb36742a2a2727df98d6afc0492ba54426a604269312bfa0216225357cc",
         intel: "2276455c2e14b3c6f458894dcc6fbf8453ec7f7d276f1170d94ea8cfd0a68551"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
