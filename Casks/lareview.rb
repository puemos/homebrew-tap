cask "lareview" do
  arch arm: "aarch64", intel: "298e65e8bb90e8a078c3a13ae636df9b606123a81aaa2c4a508c722d3aa22cf6"

  version "0.0.34"
  sha256 arm:   "2dc65340d7e0f292e2988a5e38de4873f7f623cf29be11b95cfe35e1d063db32",
         intel: "298e65e8bb90e8a078c3a13ae636df9b606123a81aaa2c4a508c722d3aa22cf6"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
