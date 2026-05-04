class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "2da7d7f565666aa6374972a63b5e288df498dd3382f4a7a4d2761a786d8d57f2"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "b593478705b8b2640452ebedcb65243012068d2fa727f27414b446d0f4a86b9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "092d4afd25fec78021a186653723b100cd48bf9ba9b9eedfe4c4c27053c3538c"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "564906f60a5810838f8ab51c4dec4196e0234019861df10babc1e6b1579d1fa7"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
