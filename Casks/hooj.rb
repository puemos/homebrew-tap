cask "hooj" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER",
         intel: "PLACEHOLDER"

  url "https://github.com/puemos/hooj/releases/download/v#{version}/Hooj_#{arch}.app.tar.gz"
  name "Hooj"
  desc "A simple FFmpeg-based desktop video editor"
  homepage "https://github.com/puemos/hooj"

  depends_on macos: ">= :big_sur"
  depends_on formula: "ffmpeg"

  app "Hooj.app"
  binary "#{appdir}/Hooj.app/Contents/MacOS/hooj"
end