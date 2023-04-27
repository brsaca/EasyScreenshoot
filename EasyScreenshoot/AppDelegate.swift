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
        
        /// Creating menu item area capture
        let itemSelectArea = NSMenuItem(title: "Select an area", action: #selector(Self.actionSelectArea(_:)), keyEquivalent: "")
        itemSelectArea.image =  NSImage(
            systemSymbolName: "rectangle.dashed",
            accessibilityDescription: nil
        )
        itemSelectArea.target = self
        mainMenu.addItem(itemSelectArea)
        
        /// Creating menu item: entire screen capture
        let itemCaptureEntireScreen = NSMenuItem(title: "Screenshoot the entire screen", action: #selector(Self.actionCaptureEntireScreen(_:)), keyEquivalent: "")
        itemCaptureEntireScreen.image = NSImage(
            systemSymbolName: "macwindow.on.rectangle",
            accessibilityDescription: nil
        )
        itemCaptureEntireScreen.target = self
        mainMenu.addItem(itemCaptureEntireScreen)
        
        statusBarItem?.menu = mainMenu
        
        /// Creating menu item: window capture
        let itemCaptureWindow = NSMenuItem(
            title: "Capture a window",
            action: #selector(self.actionCaptureWindow(_:)),
            keyEquivalent: "")
        itemCaptureWindow.image = NSImage(
            systemSymbolName: "macwindow",
            accessibilityDescription: nil
        )
        itemCaptureWindow.target = self
        mainMenu.addItem(itemCaptureWindow)
        
        /// Creating a divider
        mainMenu.addItem(.separator())
        
        /// Creating menu item:  quit the app
        let itemQuit = NSMenuItem(
            title: "Quit EasyScreenshot",
            action: #selector(self.actionExitApp(_:)),
            keyEquivalent: "")
        itemQuit.target = self
        mainMenu.addItem(itemQuit)
        
        statusBarItem?.menu = mainMenu
    }
    
    // MARK: - Actions
    @objc private func actionSelectArea(_ sender: Any?) {
        ScreenCaptureUtil.screenshoot(type: .UserSelection)
    }
    
    @objc private func actionCaptureEntireScreen(_ sender: Any?) {
        ScreenCaptureUtil.screenshoot(type: .EntireScreen)
    }
    
    @objc private func actionCaptureWindow(_ sender: Any?) {
        ScreenCaptureUtil.screenshoot(type: .Window)
    }
    
    @objc private func actionExitApp(_ sender: Any?) {
        
    }
}
