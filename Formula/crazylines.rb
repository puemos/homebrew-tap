class Crazylines < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/crazylines"
  url "https://github.com/puemos/crazylines/releases/download/v0.1.0/Crazylines_0.1.0_amd64.AppImage"
  version "0.1.0"
  sha256 "06579c502aa9d4ffc45250b610e5a5ed464b26a3b5b84f9ef2ab85f3c4974f40"
  license "MIT OR Apache-2.0"

  depends_on "gh"

  def install
    if OS.linux?
      bin.install "Crazylines_#{version}_amd64.AppImage" => "crazylines"
      chmod "+x", bin/"crazylines"
    end
  end

  test do
    system "#{bin}/crazylines", "--version"
  end
end
