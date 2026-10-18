//
//  ContextMenuManager.swift
//  LightsOut
//

import AppKit

class ContextMenuManager {
    private weak var statusItem: NSStatusItem?

    init(statusItem: NSStatusItem) {
        self.statusItem = statusItem
    }

    func showContextMenu() {
        guard let statusItem = statusItem else { return }
        
        let menu = NSMenu()

        // Quit
        menu.addItem(NSMenuItem(
            title: "Quit LightsOut",
            action: #selector(NSApplication.terminate(_:)),
            keyEquivalent: "q"
        ))

        statusItem.menu = menu
        statusItem.button?.performClick(nil)
        statusItem.menu = nil
    }

}
