cask "voicedrive" do
  version "0.1.0"
  sha256 "de8b90203ad66f41b11c74dada636d326727886b1f843c8b155a159c7cefa356"

  url "https://github.com/md-r-rafi/homebrew-voice-drive/releases/download/v#{version}/VoiceDrive.dmg"
  name "Voice Drive"
  desc "Offline, private voice-to-text dictation"
  homepage "https://github.com/md-r-rafi/voice-drive"

  # The app is ad-hoc signed (no paid Apple Developer ID / notarization yet).
  # Install with `--no-quarantine` to open it without the Gatekeeper warning:
  #   brew install --cask --no-quarantine md-r-rafi/voice-drive/voicedrive
  depends_on macos: :big-sur

  app "VoiceDrive.app"

  # Remove local config on `brew uninstall --zap`.
  zap trash: "~/Library/Application Support/voice-to-text"
end
