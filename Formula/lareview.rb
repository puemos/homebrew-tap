class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.7/LaReview_0.1.7_amd64.AppImage"
  version "0.1.7"
  sha256 "bde6ec3e01a67b9092ad4ea3533a2cee1e6a77f52d85c7df979c3ed1ddcfa8f7"
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
