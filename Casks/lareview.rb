cask "lareview" do
  arch arm: "aarch64", intel: "dcfbae21a8cfa6387c1920758fdfc86c4d7c3c7712e19965ebfe8ee71c9bab8d"

  version "0.0.23"
  sha256 arm:   "9d6dfe1653f068798bd60d2609dab64282f8d03f4652b1562f3403b8b697d094",
         intel: "dcfbae21a8cfa6387c1920758fdfc86c4d7c3c7712e19965ebfe8ee71c9bab8d"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
