cask "kubera" do
  version "1.4.0"
  sha256 "ae97e0199de4e12d93205ad2167aace34ce972f3a3b732b2c3c2497619c7eaa3"
  url "https://github.com/ptmaroct/kubera/releases/download/v#{version}/Kubera.dmg"
  name "Kubera"
  desc "Native macOS menubar app for Infisical secrets"
  homepage "https://github.com/ptmaroct/kubera"

  depends_on formula: "infisical"
  depends_on macos: ">= :ventura"

  app "Kubera.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kubera.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.anujsharma.Kubera.plist",
    "~/Library/Application Support/Kubera",
  ]
end
