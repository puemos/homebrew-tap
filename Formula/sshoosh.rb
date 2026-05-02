class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "fc2f0f14ea946b4decfe8eb8b9dd033be02d929157b18567b60765191a9b5aec"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "fd952ff30cde60b88e8268e60283f316270d1f03f83d73dd3c27c802bf275930"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45fbf938212349998485f8d0fec11c10f278fb9b2bdcb48c936b5c7c1428ef1a"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b014eb3362c174a16b7c80b2356192a9ff6cdcb1a39db03f78601230b35c8d4"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
