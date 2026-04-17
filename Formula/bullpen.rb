class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.3.2/Bullpen_0.3.2_amd64.AppImage"
  version "0.3.2"
  sha256 "55f5d821d4a7f7ec4fd4000cdea92693633005f4ef38c39f3871eb12289dfd65"
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
