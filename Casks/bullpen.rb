cask "bullpen" do
  arch arm: "aarch64", intel: "4f0b3203bfac5a814d5a74001d9ee4151a2f4c7e2252a5aa28574e98a8c95d7e"

  version "0.5.5"
  sha256 arm:   "69249469598ea29eace996f48795da4b587a3cd16eaf3ad409b01db2bea15306",
         intel: "4f0b3203bfac5a814d5a74001d9ee4151a2f4c7e2252a5aa28574e98a8c95d7e"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
