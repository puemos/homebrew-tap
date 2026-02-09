cask "lareview" do
  arch arm: "aarch64", intel: "0a3b05e128d085b73cc212dd320e25fb3ba23c43631ab4f094cf909add92c40c"

  version "0.0.32"
  sha256 arm:   "d7988c87e4b311935f16e17b862e1d59c04b2cb7380ef39187bfffce3472fd90",
         intel: "0a3b05e128d085b73cc212dd320e25fb3ba23c43631ab4f094cf909add92c40c"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
