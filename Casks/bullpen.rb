cask "bullpen" do
  arch arm: "aarch64", intel: "b9d2c9ee051dff7f2eb19418d832d02e1d8ea5efe7817b8b921e99679fb5ae06"

  version "0.4.0"
  sha256 arm:   "eaa8b0049d788e51f2015496c923547715e0a87f7adced91c53bd9029802bd4a",
         intel: "b9d2c9ee051dff7f2eb19418d832d02e1d8ea5efe7817b8b921e99679fb5ae06"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
