cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.18"
  sha256 arm:   "6135b32d3bb596aaa2b45e69e35e7223ff00d1dfc767397a0f87c80d8d08d2f3",
         intel: "7eda332cd3a951bed684b2d2edab92c06ec74d7d9e0d3024bf7e765379888c4f"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
end
