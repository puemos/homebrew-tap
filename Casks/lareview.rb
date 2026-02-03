cask "lareview" do
  arch arm: "aarch64", intel: "7f7076af4d7dc0e7435adab50ccaa44574e2b787f7d9751c5c6e0b6ced69d6f1"

  version "0.0.29"
  sha256 arm:   "ec21ee25084991c550f9bad2b1c2f29b3ba73c04406c5bfbc2024e396f1a61d6",
         intel: "7f7076af4d7dc0e7435adab50ccaa44574e2b787f7d9751c5c6e0b6ced69d6f1"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
