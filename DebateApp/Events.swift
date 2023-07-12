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
        Events(name: "Public Forum", location: 1),
        Events(name: "CX/Policy Debate", location: 1),
        Events(name: "Word Schools Debate", location: 1),
        Events(name: "Congressional Debate", location: 1)
    ]
    
    static let speechEvents = [
        Events(name: "Extemp", location: 1),
        Events(name: "Orignal Oratory", location: 1),
        Events(name: "Dramatic Interpretation", location: 1),
        Events(name: "Humorous Interpretation", location: 1),
        Events(name: "Prose/Poetry", location: 1),
        Events(name: "Program Oral Interpretation", location: 1),
        Events(name: "Informative Speaking", location: 1)
    ]
    
    static let allEvents = [
        Events(name: "Lincoln Douglas", location: 0),
        Events(name: "Public Forum", location: 1),
        Events(name: "CX/Policy Debate", location: 1),
        Events(name: "Word Schools Debate", location: 1),
        Events(name: "Congressional Debate", location: 1),
        Events(name: "Extemp", location: 1),
        Events(name: "Orignal Oratory", location: 1),
        Events(name: "Dramatic Interpretation", location: 1),
        Events(name: "Humorous Interpretation", location: 1),
        Events(name: "Prose/Poetry", location: 1),
        Events(name: "Program Oral Interpretation", location: 1),
        Events(name: "Informative Speaking", location: 1)
    ]
    
}
