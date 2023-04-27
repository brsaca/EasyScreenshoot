//
//  ScreenCaptureUtil.swift
//  EasyScreenshoot
//
//  Created by Brenda Saavedra  on 27/04/23.
//

import SwiftUI

enum ScreenshootType {
    case EntireScreen
    case Window
    case UserSelection
}

class ScreenCaptureUtil {
    
    static func screenshoot(type: ScreenshootType) {
        let task = Process()
        task.launchPath = "/usr/sbin/screencapture"
        
        switch type {
        case .EntireScreen:
            task.arguments = ["-cm"]
            break
        case .Window:
            task.arguments = ["-cw"]
            break
        case .UserSelection:
            task.arguments = ["-cs"]
            break
        }
        
        task.launch()
        task.waitUntilExit()
    }
}
