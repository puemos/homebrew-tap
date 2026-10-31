cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "6fa6934c6f0c7b89186aaf51197bcf711446971318b5c9e698cb9fc838789fad",
         intel: "72b5d758df728f005fa1c1a123b17a3a19e4347714bbb8a9c826884fa6e2a71f"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
