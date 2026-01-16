cask "lareview" do
  arch arm: "aarch64", intel: "2ebfc5bf0d3c383ff8899e63ed1d981b390b817dc8cf371c0cabe63830f85396"

  version "0.0.24"
  sha256 arm:   "835223b6cfe7f6b83c5a3e9d01e6c0fce37b43dedb65908d989cbc630a9484bb",
         intel: "2ebfc5bf0d3c383ff8899e63ed1d981b390b817dc8cf371c0cabe63830f85396"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
