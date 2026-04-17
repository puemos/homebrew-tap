cask "bullpen" do
  arch arm: "aarch64", intel: "14d9add80f8d8a0125cf7053569a5d96e2303d355e4b19a0921a0408f30e33c1"

  version "0.3.0"
  sha256 arm:   "92b636c560e8772f3773eb2529b84d2e5dd4d25aff058bb22b9e9ddea6d97c03",
         intel: "14d9add80f8d8a0125cf7053569a5d96e2303d355e4b19a0921a0408f30e33c1"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
