class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.0.18/LaReview_0.0.18_amd64.AppImage"
  version "0.0.18"
  sha256 "131ce8536ce829162293f54c17e9d0b2d72c3173c514930dc6b13ff7b8b09649"
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
