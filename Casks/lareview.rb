cask "lareview" do
  arch arm: "aarch64", intel: "ef61d91d6aef24c9db856d02483e398a1ca9729e508e018135b027416849d81c"

  version "0.0.36"
  sha256 arm:   "e05dfa4c363f65b67eaccb6706636f1c5b4044726f4223f40f4507bdd59a9092",
         intel: "ef61d91d6aef24c9db856d02483e398a1ca9729e508e018135b027416849d81c"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
