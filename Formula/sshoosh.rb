class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.7"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "f11d8d2662daf1f9498f2414c2ee34c6613560d4790c882f28ac92251d43dc1b"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "456b58b0229f229d3821bcc990a06742ee3998810e18e15b030ccafe44c5c245"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d3203e57ff4ebd88903443078181d45c592adb0c71d72a198b6d954e6fb5621"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2816022ea8abb22927082e675ba28660755d82db35a0f7d49792f9bf4ab7f7b5"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
