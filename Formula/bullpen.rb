class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.3.3/Bullpen_0.3.3_amd64.AppImage"
  version "0.3.3"
  sha256 "5f9d34855fafc25929b453a3b550303f76f20788b43a3f01380e8a51e516556d"
  license "MIT OR Apache-2.0"

  depends_on "gh"

  def install
    if OS.linux?
      bin.install "Bullpen_#{version}_amd64.AppImage" => "bullpen"
      chmod "+x", bin/"bullpen"
    end
  end

  test do
    system "#{bin}/bullpen", "--version"
  end
end
