cask "kubera" do
  version "1.6.2"
  sha256 "e9a963cc566500ce86a833a78e034eadd8175f8755c3c2003df52c9aaaebcbe7"
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
