cask "lareview" do
  arch arm: "aarch64", intel: "c2c1996bb8d4d2884e36f1a4317af9908e90976215cb2a107adf074b327ccacd"

  version "0.0.38"
  sha256 arm:   "94003a4d1fe7eb3c2f35a60693260fe1526a4907cf3137daf58bc4ad53ae16c8",
         intel: "c2c1996bb8d4d2884e36f1a4317af9908e90976215cb2a107adf074b327ccacd"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
