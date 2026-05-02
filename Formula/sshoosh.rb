class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "037d5b3d0fb0cc98fe91df97c00ebd1d45d16e36f6984eeb01b82bfac6d25c67"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "35251ce6b1869a51343048b2b5081ef49b97201daf7b63f1e652bd06b89282a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a802af8b11733e5901b610baa551efcddb814f4801f5b2c52869808508587198"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94543bca3db15ebbb869d293cbeadb0e0e2a8c9785ec8d35e2f14b293b5aa611"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
