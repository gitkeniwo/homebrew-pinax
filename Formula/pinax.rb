class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.2.2/pinax-cli-0.2.2.zip"
  version "0.2.2"
  sha256 "844ca7ad23114f1ad7a57e82938ee92a04949ae312d2eea88b6b59a8ef508377"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
