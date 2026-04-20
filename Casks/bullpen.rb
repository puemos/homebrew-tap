cask "bullpen" do
  arch arm: "aarch64", intel: "712143a830522223997658432546e57fe59f0faa80220f51b783f68461e30245"

  version "0.5.6"
  sha256 arm:   "7dbfb58d9f4c6cc5e8dc7f553b9d7906c3a85102aafd87009e38f75e66c84521",
         intel: "712143a830522223997658432546e57fe59f0faa80220f51b783f68461e30245"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
