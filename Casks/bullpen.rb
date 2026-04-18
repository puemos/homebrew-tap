cask "bullpen" do
  arch arm: "aarch64", intel: "6709590b509dc99840ca206e466da3aaf80ada24bf37fa05aabdd6c540eb90c3"

  version "0.5.1"
  sha256 arm:   "5a3b69f5714a449b1bb8763298156c2592310a56caa8908e73608df4c5f381fb",
         intel: "6709590b509dc99840ca206e466da3aaf80ada24bf37fa05aabdd6c540eb90c3"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
