class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.2.0/pinax-cli-0.2.0.zip"
  version "0.2.0"
  sha256 "e4995a8151bc6b130ff6ad914cbf335dd7bbf21f99aacd0e89a568e49ed0cd0b"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
