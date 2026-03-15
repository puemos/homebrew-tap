class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.0.37/LaReview_0.0.37_amd64.AppImage"
  version "0.0.37"
  sha256 "1ff246f19f65f6f65211f91114c5c85e138334dd979f0e540f27c69d14e309fa"
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
