cask "crazylines" do
  arch arm: "aarch64", intel: "47e5c9c3b5640d5e181ad4ee39129e501dc293edbbb3fddffc9902e471ba86ea"

  version "0.1.0"
  sha256 arm:   "f35ee65f539929814d930976c0b5a7f00a3d5e82957f2cf5fd79157c50b7eebd",
         intel: "47e5c9c3b5640d5e181ad4ee39129e501dc293edbbb3fddffc9902e471ba86ea"

  url "https://github.com/puemos/crazylines/releases/download/v#{version}/Crazylines_#{arch}.app.tar.gz"
  name "Crazylines"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/crazylines"

  depends_on macos: ">= :big_sur"

  app "Crazylines.app"
  binary "#{appdir}/Crazylines.app/Contents/MacOS/crazylines"
end
