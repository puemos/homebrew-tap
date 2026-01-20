cask "lareview" do
  arch arm: "aarch64", intel: "9a72a3de55d4ec85499ce30b698a1545abfe954d01dadbd657c3c3111a153729"

  version "0.0.25"
  sha256 arm:   "69720e53a4f860b651526775e34456a2212751dbf8f8f7fd1de9ff3cc05c5073",
         intel: "9a72a3de55d4ec85499ce30b698a1545abfe954d01dadbd657c3c3111a153729"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
