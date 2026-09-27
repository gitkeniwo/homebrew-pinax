class Pinax < Formula
  desc "Self-hosted image catalog (command-line tool)"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"
  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v0.1.0/pinax-cli-0.1.0.zip"
  version "0.1.0"
  sha256 "5e536c7b82e756a443cdfa9e0a65fef70754cac2bf8aded5bee88ddb2e1b319f"

  depends_on macos: :sonoma

  def install
    bin.install "pinax"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/pinax --help")
  end
end
