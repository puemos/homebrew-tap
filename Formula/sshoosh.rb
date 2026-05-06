class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.6"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "8e1247eff10c46ec948877ad5c4ad766074a0a9b5ec7a78811ce5feb39b00344"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "96a30b169dd2cf28dfd6d51974efba7cfa43eca7f299fa5eaf248ccde3c5d2ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4b230a1702f8f1ff248838dcee5f4734efa5b30dcf3314496f53bf05b98f45c"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a65b2aa89615a56f5c1d0696a467903528364c3ae5660bd141f4c30b1f4ce917"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
