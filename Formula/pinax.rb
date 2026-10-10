class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.2.1/pinax-cli-0.2.1.zip"
  version "0.2.1"
  sha256 "133e40ac885f5b574565caf4707f62910bc04bf26daa891bfb0f80b9f6864ce6"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
