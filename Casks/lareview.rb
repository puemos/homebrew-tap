cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "2f38cc0eea40cc01fd83ba48fe92b629dba7b19829dce20e3ef5ae17d2f9d378",
         intel: "817bd6ecf74cb9fcad844604f5d410d83409c11d12265edfa4501dba7cd8b3dd"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
