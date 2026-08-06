cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "b1501757ba33309c79bf7ebe418e83bbcbd08d008888cea1e1183cd6a4232982",
         intel: "e00b85525f7f75e49f8074d87fedf06a792b2a79abce2913a37504a00f0cf08c"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
