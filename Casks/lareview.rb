cask "lareview" do
  arch arm: "aarch64", intel: "472af89eade5f5bc450b8443babd8324ba9ae186cef86502eacb2ecae5bd407e"

  version "0.0.27"
  sha256 arm:   "256dd0133a19532051f66822af340e817ce78cfcaf2ce5030252888c55915c87",
         intel: "472af89eade5f5bc450b8443babd8324ba9ae186cef86502eacb2ecae5bd407e"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
