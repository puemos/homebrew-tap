class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.0.27/LaReview_0.0.27_amd64.AppImage"
  version "0.0.27"
  sha256 "f6e21c66fa3ff3c9b533502f1fa7bc70b0a77d65f98e027f2d2aeae38a6182b5"
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
