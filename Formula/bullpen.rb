class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.2.0/Bullpen_0.2.0_amd64.AppImage"
  version "0.2.0"
  sha256 "b31d548fd5cf0e3ee23cd087765866f7a9ce6dd6de53743292e3436fe58c59ee"
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
