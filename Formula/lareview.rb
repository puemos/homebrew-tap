class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.0/LaReview_0.1.0_amd64.AppImage"
  version "0.1.0"
  sha256 "62649f64f816a6ae63b13529515a8d0cd2c968df3fb4aabe5525f5022ba5d2ea"
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
