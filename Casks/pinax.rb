cask "pinax" do
  version "0.2.0"
  sha256 "31e13dfed527867814290c690dba51e82cb4a2ee643858b0f93bbe275cd65408"

  url "https://github.com/gitkeniwo/homebrew-pinax/releases/download/v#{version}/Pinax-#{version}.zip"
  name "Pinax"
  desc "Self-hosted image catalog"
  homepage "https://github.com/gitkeniwo/homebrew-pinax"

  depends_on macos: ">= :sonoma"

  app "Pinax.app"

  caveats <<~EOS
    Pinax is not notarized: it has no Apple Developer ID. macOS blocks the
    first open of every new version. To open it:

      1. Open Pinax once and dismiss the warning.
      2. Open System Settings › Privacy & Security.
      3. Click "Open Anyway" next to the Pinax message, then confirm.

    Each new version has a new code signature. The first time it reads a
    backend credential, Keychain asks again; click "Always Allow".
  EOS
end
