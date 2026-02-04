cask "lareview" do
  arch arm: "aarch64", intel: "f93520bd96d629547c11c313c3f65c9a8bfee39161a396d57824cd1f388dc358"

  version "0.0.31"
  sha256 arm:   "4694ae4fe589496242a4a73a9a08e2caeda13a8cc5f9d3fcc9ee77ed078e89b5",
         intel: "f93520bd96d629547c11c313c3f65c9a8bfee39161a396d57824cd1f388dc358"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
