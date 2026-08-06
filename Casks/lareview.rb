cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "fd70be367477757011d6f988cfa1d828c5769e9177cb8fb3f537b3e621fdbe09",
         intel: "a4be98f35eb978eb7ee942872a86f6d57f87a9056502080502a590ed5110d1bc"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
