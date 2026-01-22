cask "lareview" do
  arch arm: "aarch64", intel: "ffed353ca7c7394caddddec49d537739152c83fca41ee521bbab9d6245f5425a"

  version "0.0.28"
  sha256 arm:   "0626cfd4b82fbd5839de6ab243b8976d2d5862d17453a41dfa01b1954df31ab4",
         intel: "ffed353ca7c7394caddddec49d537739152c83fca41ee521bbab9d6245f5425a"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
