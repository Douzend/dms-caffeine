# Caffeine

A simple widget for DankMaterialShell (DMS) that keeps your screen awake with one click.

## Features

- One-click toggle from DankBar.
- Uses the session idle inhibitor.
- Keeps its state across DMS restarts.
- Optional status toasts.
- Control Center tile.
- English and Spanish interface.

## Requirements

- DankMaterialShell 1.6.3 or newer.
- A session supported by DMS.

## Installation

### From source

```bash
git clone https://github.com/Douzend/dms-caffeine.git \
  ~/.config/DankMaterialShell/plugins/caffeine
```

Reload DMS:

```bash
dms ipc call plugin-scan rescan caffeine
dms ipc call plugins reload caffeine
```

Then:

1. Open DMS Settings → Plugins.
2. Enable **Caffeine**.
3. Add the Caffeine widget to DankBar.
4. Optionally, add it from the Control Center widget library.

## Usage

- Click the cup in DankBar to enable or disable Caffeine.
- The cup is highlighted while Caffeine is active.
- The Control Center tile shows **Active** or **Inactive**.
- Disable **Show status toasts** in the plugin settings if you do not want notifications.

## How it works

Caffeine calls `SessionService.toggleIdleInhibit()` from DMS. It does not run its own timer or background process; DMS handles the idle inhibitor.

## Translations

English is the source language. Spanish is included.

To add a language, create `translations/<locale>.json` and use `I18n.trFor("caffeine", "...")` in the QML files.

If you'd like to contribute a translation in your language, you're more than welcome.

## Credits

- Icons based on the GNOME Caffeine extension by eonpatapon:
  https://github.com/eonpatapon/gnome-shell-extension-caffeine
- Icons licensed under GPL-2.0-or-later.

## License

GPL-2.0-or-later. See [LICENSE](LICENSE).

Copyright (C) 2026 Douzend.
