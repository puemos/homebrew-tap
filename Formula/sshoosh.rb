class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "d6bd0bebbd68bb1b3799d8edf492608138e2f8567db3704d26c5db7d1a577446"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "a0e4ea0260be389b36b3133df5a3e773364c85a1fb00e74b5d1ab53f59ad38c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a769550f82bc28b20582ff3824ffd27573c6ed1c9f70003e6cc35114639dbe7d"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9327444fd9ef951243f1c99088091695fd0add25ef17ac6607a8db8d7b52420"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
