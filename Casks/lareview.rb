cask "lareview" do
  arch arm: "aarch64", intel: "d4e7a57b69503bf6f7bd1d2c1e04596a4a6ba1ca6bea4e7a1836e5faba00b806"

  version "0.0.20"
  sha256 arm:   "2f710f0f7c6867e31607b3776a8a66b3cb543bcac84c31b8004adb645b03f51f",
         intel: "d4e7a57b69503bf6f7bd1d2c1e04596a4a6ba1ca6bea4e7a1836e5faba00b806"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
end
