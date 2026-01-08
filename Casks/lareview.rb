cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.18"
  sha256 arm:   "442020fa4343144a3d65a9f8b6fb817f578efaeef35d963112b2540fa5feffcf",
         intel: "76f69ed7545c0448f2477d10373bf533f440414deb39322e64c7fc8f3d7fbe18"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{version}_#{arch}.dmg"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  app "LaReview.app"

  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"

  depends_on macos: ">= :big_sur"
end
