class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.8/LaReview_0.1.8_amd64.AppImage"
  version "0.1.8"
  sha256 "934837e3d6d99960b03e4de5349bc30d94700313f67c1e01860fabf5c58eb3dd"
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
