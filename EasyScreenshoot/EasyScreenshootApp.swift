//
//  EasyScreenshootApp.swift
//  EasyScreenshoot
//
//  Created by Brenda Saavedra  on 27/04/23.
//

import SwiftUI

@main
struct EasyScreenshootApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self)
    private var appDelegate
    
    var body: some Scene {
        Settings {
            ContentView()
        }
    }
}
