# Voice Drive — Homebrew Tap

Offline, private voice-to-text dictation for macOS. 100% on-device (Whisper) —
no account or internet needed to dictate.

## Install

```sh
brew tap md-r-rafi/voice-drive
brew trust md-r-rafi/voice-drive          # Homebrew 6.0+ only (older versions skip this)
brew install --cask --no-quarantine voicedrive
```

`brew trust` is required on newer Homebrew, which refuses to run third-party
casks until you explicitly trust the tap.

`--no-quarantine` is required because the app is **ad-hoc signed** (not notarized
via a paid Apple Developer account). Without it, macOS Gatekeeper warns on first
launch and you'd need to right-click the app → **Open** once.

On first launch, grant **Microphone** and **Accessibility** when prompted
(Accessibility is what lets it type into other apps).

## Update

```sh
brew upgrade --cask voicedrive
```

## Uninstall

```sh
brew uninstall --cask voicedrive
# also remove local settings:
brew uninstall --zap --cask voicedrive
```

## About

Source (private): https://github.com/md-r-rafi/voice-drive

Features: offline dictation into any app, domain profiles (coder / 3D / medical /
writer), custom vocabulary, 12 languages, rebindable hotkey + push-to-talk,
menu-bar app, and optional cloud AI reshaping (sign-in).
