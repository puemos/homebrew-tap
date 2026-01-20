cask "lareview" do
  arch arm: "aarch64", intel: "4d1aab3262df505ce26d28806043fe4b60a7b501ef7b9b506513f332a23629d8"

  version "0.0.26"
  sha256 arm:   "095994f985b294cd6c11511b57ad3a7874eface30d41c71414a6bb355275a40c",
         intel: "4d1aab3262df505ce26d28806043fe4b60a7b501ef7b9b506513f332a23629d8"

  url "https://github.com/puemos/lareview/releases/download/v#{version}/LaReview_#{arch}.app.tar.gz"
  name "LaReview"
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"

  depends_on macos: ">= :big_sur"

  app "LaReview.app"
  binary "#{appdir}/LaReview.app/Contents/MacOS/lareview"
end
