//
//  AppDelegate.swift
//  EasyScreenshoot
//
//  Created by Brenda Saavedra  on 27/04/23.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        if let statusBarButton = statusBarItem?.button {
            statusBarButton.image = NSImage(
                systemSymbolName: "cursorarrow.rays",
                accessibilityDescription: nil
            )
        }
        let mainMenu = NSMenu()
        statusBarItem?.menu = mainMenu
    }
}
