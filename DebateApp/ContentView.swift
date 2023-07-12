//
//  ContentView.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    var events: [Events] = EventList.allEvents
    var listOfEvents = [Home(), Home()]
    
    var body: some View {
        // Home()
        NavigationView {
            
            ZStack {

                VStack {

                    List(events, id: \.id) {event in
                        NavigationLink(destination: listOfEvents[event.location], label: {
                            Text(event.name)
                        }).foregroundColor(.black)
                            .font(.system(size: 20))
                            .padding(8)
                        
                    }
                    
                }
                
            }
            .navigationTitle("All Events")
        
            
            
        }.navigationBarBackButtonHidden(true)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
