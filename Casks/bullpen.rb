cask "bullpen" do
  arch arm: "aarch64", intel: "f81013bb28cba4fc325f20c37c1ecc06b2831d35ff99e697fa40355b41ff4247"

  version "0.2.0"
  sha256 arm:   "e97f79560a7e4498cb7580aa38de5254dcdf69cba4f4bc2ebe7d5202872caf36",
         intel: "f81013bb28cba4fc325f20c37c1ecc06b2831d35ff99e697fa40355b41ff4247"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
