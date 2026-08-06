class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  url "https://github.com/puemos/lareview/releases/download/v0.1.3/LaReview_0.1.3_amd64.AppImage"
  version "0.1.3"
  sha256 "cb9fee17b4b2baea7e077de81fc418a1d6b6669ca02695e8a17b8826bbb2fcba"
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
