// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2026 Douzend

import QtQuick
import qs.Common
import qs.Services
import qs.Widgets
import qs.Modules.Plugins

PluginComponent {
    id: root
    pluginId: "caffeine"
    pluginService: PluginService

    readonly property bool active: SessionService.idleInhibited
    property bool showToasts: pluginData.showToasts ?? true
    
    ccWidgetIcon: "coffee"
    ccWidgetPrimaryText: I18n.trFor("caffeine", "Caffeine")
    ccWidgetSecondaryText: root.active
	? I18n.trFor("caffeine", "Active")
	: I18n.trFor("caffeine", "Inactive")
    ccWidgetIsActive: root.active

    function toggle() {
	SessionService.toggleIdleInhibit()
	if (root.showToasts)
	    ToastService.showInfo(root.active 
	    ? I18n.trFor("caffeine", "Caffeine enabled") 
	    : I18n.trFor("caffeine", "Caffeine disabled"))

    }
    

    component CupIcon: DankSVGIcon {
	size: root.iconSize
	source: root.active
	    ? Qt.resolvedUrl("assets/icons/caffeine-on.svg")
	    : Qt.resolvedUrl("assets/icons/caffeine-off.svg")
	colorOverride: root.active ? Theme.primary : Theme.surfaceText

	Behavior on colorOverride {
	    ColorAnimation { duration: Theme.shortDuration }
	}
    }
    
    horizontalBarPill: Component  {
	CupIcon {}
    }
    
    verticalBarPill: Component {
	CupIcon {}
    }
    
    pillClickAction: () => root.toggle()
    onCcWidgetToggled: root.toggle()
}
