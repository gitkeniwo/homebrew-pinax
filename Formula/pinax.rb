class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.3.1/pinax-cli-0.3.1.zip"
  version "0.3.1"
  sha256 "35de65bf80ddf52ef817d8cf60ed3b6ea861a337805773ae251485edb44b2504"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
