class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.10/LaReview_0.1.10_amd64.AppImage"
  version "0.1.10"
  sha256 "7dcdd5d778344705516405dde563048c2c594e03314956e49807616479d29f14"
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
