cask "kubera" do
  version "1.5.0"
  sha256 "0188419875e739e772d7c4764a2190394598fd8ae22b37814986f4187e747e4b"
  url "https://github.com/ptmaroct/kubera/releases/download/v#{version}/Kubera.dmg"
  name "Kubera"
  desc "Native macOS menubar app for Infisical secrets"
  homepage "https://github.com/ptmaroct/kubera"

  depends_on formula: "infisical"
  depends_on macos: ">= :ventura"

  app "Kubera.app"
  binary "#{appdir}/Kubera.app/Contents/Resources/kubera", target: "kubera"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kubera.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.anujsharma.Kubera.plist",
    "~/Library/Application Support/Kubera",
  ]
end
