class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.0.38/LaReview_0.0.38_amd64.AppImage"
  version "0.0.38"
  sha256 "2ca7e00e2c3ae956a2e367a35aa0d0258b48ac204e7dbf240f645b5680d66f06"
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
