class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.5.7/Bullpen_0.5.7_amd64.AppImage"
  version "0.5.7"
  sha256 "0b5549a753c518c59af915c91b52b97016b33c0dcfa48b3e500190c211bc9046"
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
