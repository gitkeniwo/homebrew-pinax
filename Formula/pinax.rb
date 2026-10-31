class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.3.2/pinax-cli-0.3.2.zip"
  version "0.3.2"
  sha256 "349ac37c8b4c14af7d4e897b348f7fe7f88b811b009f53c6e3c9331b5330007c"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
