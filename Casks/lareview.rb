cask "lareview" do
  arch arm: "aarch64", intel: "d5638813bec42fd59cda9ca0292da5f17fa9ae4b38513fbd73fb635cf06a45a6"

  version "0.0.35"
  sha256 arm:   "f768472ef7e5d245c2d759c58c9ed01b4a2019e39eacba629802515ab6f9145d",
         intel: "d5638813bec42fd59cda9ca0292da5f17fa9ae4b38513fbd73fb635cf06a45a6"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
