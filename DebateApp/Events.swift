//
//  Events.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/10/23.
//

import Foundation
import SwiftUI

struct Events: Identifiable {
    let id = UUID()
    let name: String
    let location: Int
}

struct EventList {
    
    static let topEvents = [
        Events(name: "Lincoln Douglas", location: 0),
        Events(name: "Public Forum", location: 1)
    ]
    
}
