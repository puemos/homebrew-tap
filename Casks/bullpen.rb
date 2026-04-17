cask "bullpen" do
  arch arm: "aarch64", intel: "0d8b3c28f4e992a785a2599dc492f99ef101d9ad2ead72482483291dfcace892"

  version "0.3.2"
  sha256 arm:   "7340be7b7c4018e1030b7c1f8fab3741397eb729d63da1fde890511b2f7e6d18",
         intel: "0d8b3c28f4e992a785a2599dc492f99ef101d9ad2ead72482483291dfcace892"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
