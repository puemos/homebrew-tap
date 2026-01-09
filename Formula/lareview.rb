class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.0.20/LaReview_0.0.20_amd64.AppImage"
  version "0.0.20"
  sha256 "ad25d9873cc7ea335fd018c7fbbb20cdbba56b906d99285a79496d9f78da474b"
  license "MIT"

  depends_on "gh"

  def install
    if OS.linux?
      bin.install "LaReview_#{version}_amd64.AppImage" => "lareview"
      chmod "+x", bin/"lareview"
    end
  end

  test do
    system "#{bin}/lareview", "--version"
  end
end
