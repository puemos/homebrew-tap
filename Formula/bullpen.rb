class Bullpen < Formula
  desc "ACP-powered local stock market analysis workbench"
  homepage "https://github.com/puemos/bullpen"
  url "https://github.com/puemos/bullpen/releases/download/v0.3.4/Bullpen_0.3.4_amd64.AppImage"
  version "0.3.4"
  sha256 "e2f487a8786b22668b8d77186c70e0ec46cc1122681085608b6f86b338c460f2"
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
