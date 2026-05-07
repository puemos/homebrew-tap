class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.8"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "3610d2ff79108288212d9b1d0e638df0b19094b141934244efb4b7ade84a367a"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "8458b3f15a775b6cfb277fd682975cb311db63e9eea0c1dedd99d5d0be993135"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b36fdcf0a467b477e9c55c79182a572bb65e3840ef7245982d5cb8320a07c0c8"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bb6bc3a393a59b1d985422776e308c237594a327983183d722c49ad02876879"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
