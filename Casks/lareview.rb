cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "ce014c8cb4f830b551069174d8d780069653e9912a688fcb1f15d76fecd36e4c",
         intel: "938fd4aaf18d09c646575bb10752a2492e9d4ed7d72d50d14866e1989e20d6b4"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
