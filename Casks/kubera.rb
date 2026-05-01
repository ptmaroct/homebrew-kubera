cask "kubera" do
  version "1.3.0"
  sha256 "5ad26a66f2a627bbcc2ad91d0aecb64311248cf9fa3dabb94f58a93031c6d837"
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
