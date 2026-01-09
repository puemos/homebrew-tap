cask "lareview" do
  arch arm: "aarch64", intel: "4fe99913fdf036f21f8f358623293d573bb1847c76d457b848de395a74ed0df0"

  version "0.0.21"
  sha256 arm:   "ebfe34143c22f20ef7c19de3dfb676f6463047ccdef3699d7bafd2f9f238a178",
         intel: "4fe99913fdf036f21f8f358623293d573bb1847c76d457b848de395a74ed0df0"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
end
