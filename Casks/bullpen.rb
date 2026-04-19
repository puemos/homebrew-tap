cask "bullpen" do
  arch arm: "aarch64", intel: "073dd34431fdf98a50e0dc375cfb4dba2469e9c3083144e7879244c25e8b06bf"

  version "0.5.4"
  sha256 arm:   "31944f86f07c50d16553b1586c653478eebce0f92c5a97fd87ea7b326d5179d5",
         intel: "073dd34431fdf98a50e0dc375cfb4dba2469e9c3083144e7879244c25e8b06bf"

  url "https://github.com/puemos/bullpen/releases/download/v#{version}/Bullpen_#{arch}.app.tar.gz"
  name "Bullpen"
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"

  depends_on macos: ">= :big_sur"

  app "Bullpen.app"
  binary "#{appdir}/Bullpen.app/Contents/MacOS/bullpen"
end
