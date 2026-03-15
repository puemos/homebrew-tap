cask "lareview" do
  arch arm: "aarch64", intel: "1ba59797d93cdf0d4be96cf739a45f57821079bc60d7e65cb7d058a71ce64979"

  version "0.0.37"
  sha256 arm:   "3d9b71e9dd8b10f087c78f0fd7aca135bcb5c06bcbd3a07a3e60395d41e8f3d5",
         intel: "1ba59797d93cdf0d4be96cf739a45f57821079bc60d7e65cb7d058a71ce64979"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
