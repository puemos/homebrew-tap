cask "bullpen" do
  arch arm: "aarch64", intel: "95c89a731ce4621b107ae2b3b101289770f2cffd061a4eef6b9f20d23a3ecc5d"

  version "0.5.7"
  sha256 arm:   "e0ae949db051d8cef3e8830983279498e42a43522463acdf3249e9f62bf2bfaa",
         intel: "95c89a731ce4621b107ae2b3b101289770f2cffd061a4eef6b9f20d23a3ecc5d"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
