class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.9/LaReview_0.1.9_amd64.AppImage"
  version "0.1.9"
  sha256 "921e1e0a6d9713aec411b8f2251edf5dcffadc9df7d35f31d5654c8b8ffdacbf"
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
