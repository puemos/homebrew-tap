cask "lareview" do
  arch arm: "aarch64", intel: "9bdbe751fcf11783d6d069d2162e94f79ebd1d9bb9761a37a6311004db6c6d28"

  version "0.0.19"
  sha256 arm:   "3a118dbe8f474b137deb124c0d3c3007c501216760b2705fe17ad1b6e2b673bd",
         intel: "9bdbe751fcf11783d6d069d2162e94f79ebd1d9bb9761a37a6311004db6c6d28"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
end
