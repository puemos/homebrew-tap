cask "lareview" do
  arch arm: "aarch64", intel: "6c954398b342c2f8fc6387a05383832c81b1cc70070a27116cbd387b5ab58412"

  version "0.0.22"
  sha256 arm:   "f3cba64680925f5fa96273af0b0cda84029ff008c6aa274ef7395bdaf500fe9c",
         intel: "6c954398b342c2f8fc6387a05383832c81b1cc70070a27116cbd387b5ab58412"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
end
