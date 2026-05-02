class Sshoosh < Formula
  desc "Self-hosted SSH/TUI workspace chat"
  homepage "https://github.com/puemos/sshoosh"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "2623759f9989742734c9d5209acefc415837c3b8def1de1ad9cc4772b3fcd5f7"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ce634c33f96b58a319778f07839229ee9c0d2f8b946d0f45660f0a3262474c44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efa305bcf29136818244c9ee95a9d8702f33aced0b8c0f84b1bdbcfdc434eac0"
    end

    on_arm do
      url "https://github.com/puemos/sshoosh/releases/download/v#{version}/sshoosh-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc65263063589902c80435190ffeb8e2f030b375bf1b6c8675b658d4d5eef4b5"
    end
  end

  def install
    bin.install "sshoosh"
  end

  test do
    system "#{bin}/sshoosh", "--help"
  end
end
