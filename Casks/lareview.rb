cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "382feebc912bc4de2d737fcf07f109456847f5aa93d8dbec47a0c0082f303803",
         intel: "f617f056fad19b4e02e843e05919d61dbb21e366dc840d9e76b1288125753c01"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
