cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "d1d58bae744e1fa2ea23b45f2744b7644c9a760a603f0edb78379f038d410774",
         intel: "fb5662714d37c0f34482070a906456705139abd4c0af61c6a33cbec1431c4620"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
