class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.3.0/pinax-cli-0.3.0.zip"
  version "0.3.0"
  sha256 "62f1a63247182fd4bd86f3c5f8227e9e205fbaca8a5015c84dbc2df715b1cab2"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
