cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "07d49d4a497664856b143b195b62581693b12592db72cdf7755a128392051311",
         intel: "0caf2603e9eaa0e62591cca41cdb47e2279df9acb9f5795e18a7755fde2797d3"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
