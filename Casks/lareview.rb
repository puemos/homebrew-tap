cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "34961b93f3dd7d54cab77394e97cecb373cc49fdab833878fdab295c75167dd0",
         intel: "1ad539a2b5286289695c8cc6f015c5827a9a3acfbd77d7e3586a75481b6f9853"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
