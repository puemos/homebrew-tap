class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7ac3d481d6197d9ebfa51b2607f3ac669674577ef58f82f3bc30db88bc11f4dc"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d9d010e1f50cc06d244fcef8522fe836c15297cc18bccfdd2933328c3b843f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f10df39907c88f2e7a7b428b547599e578da5319f4405de8afcbd2180e3ddf3"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fc884b967ce86f918152edf5402f8932472c5e5c7e5680f65d776785e38ea23"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
