class Lareview < Formula
  desc "Desktop code review companion with AI-generated plans"
  homepage "https://github.com/puemos/lareview"
  version "0.0.18"
  license "MIT"

  depends_on "gh"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/puemos/lareview/releases/download/v0.0.18/LaReview_0.0.18_aarch64.dmg"
      sha256 "442020fa4343144a3d65a9f8b6fb817f578efaeef35d963112b2540fa5feffcf"
    else
      url "https://github.com/puemos/lareview/releases/download/v0.0.18/LaReview_0.0.18_x64.dmg"
      sha256 "76f69ed7545c0448f2477d10373bf533f440414deb39322e64c7fc8f3d7fbe18"
    end
  elsif OS.linux?
    url "https://github.com/puemos/lareview/releases/download/v0.0.18/LaReview_0.0.18_amd64.AppImage"
    sha256 "131ce8536ce829162293f54c17e9d0b2d72c3173c514930dc6b13ff7b8b09649"
  end

  def install
    if OS.mac?
      puts "DEBUG: staging.root = #{staging.root}"
      puts "DEBUG: Files in staging.root:"
      puts Dir[staging.root.to_s + "/**/*"].join("\n")
      app_path = Dir[staging.root/"**/LaReview.app"].first
      puts "DEBUG: Found app_path = #{app_path}"
      raise "Could not find LaReview.app in DMG" unless app_path

      prefix.install Pathname.new(app_path)
      bin.install_symlink prefix/"LaReview.app/Contents/MacOS/lareview" => "lareview"
    elsif OS.linux?
      bin.install "LaReview_#{version}_amd64.AppImage" => "lareview"
      chmod "+x", bin/"lareview"
    end
  end

  test do
    system "#{bin}/lareview", "--version"
  end
end
