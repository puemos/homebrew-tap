class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.3.1/Bullpen_0.3.1_amd64.AppImage"
  version "0.3.1"
  sha256 "a1dce4b9fc5f34cc292d1617bc65d3d7f5cc6a98be14ca71aff44bf8018ea7c7"
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
