// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2026 Douzend

import QtQuick
import qs.Common
import qs.Widgets
import qs.Modules.Plugins

PluginSettings {
    id:root
    pluginId: "caffeine"

    StyledText {
        width: parent.width
        text: I18n.trFor("caffeine", "Caffeine")
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }


    StyledText {
        width: parent.width
        text: I18n.trFor("caffeine", "Keeps your screen awake with one click")
        font.pixelSize: Theme.fontSizeSmall
        color: Theme.surfaceVariantText
        wrapMode: Text.WordWrap
    }

    ToggleSetting {
        settingKey: "showToasts"
        label: I18n.trFor("caffeine", "Show status toasts")
        description: I18n.trFor("caffeine", "Show a notification when Caffeine is toggled")
        defaultValue: true
    }

}
