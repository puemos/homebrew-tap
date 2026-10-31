cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "c61aaa353f2c20c455c18961743a7e17b93120595bb834572e6e68cb36be595c",
         intel: "1f66124460eae38cf864f95ea7cd3a78879fc3b05ee95ff956914d54872a19dc"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
