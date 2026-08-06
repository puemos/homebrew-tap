cask "lareview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "6352d1bb7bcf595083e3d559935437d5257207f5143b57a87cc4045854d3454a",
         intel: "b52e828fccc45f6e4c67266bf18523dddfc947be221b672a69da22009bec2bfa"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: :big_sur

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
