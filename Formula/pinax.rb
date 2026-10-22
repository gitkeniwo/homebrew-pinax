class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.2.3/pinax-cli-0.2.3.zip"
  version "0.2.3"
  sha256 "ed8b89a965eeb5bf52b10467f23a135f86d6b9c898989de22e5a9a2ed21f26a8"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
