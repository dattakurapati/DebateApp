//
//  ContentView.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/6/23.
//

import SwiftUI

struct ContentView: View {
    
    let debates = debateEvents
    let debateView = debateViews
    let speeches = speechEvents
    
    var body: some View {
        //        Home()
        NavigationView {
            VStack {
                List {
                    ForEach(debates, id: \.self) { debateEvent in
                        NavigationLink(destination: debateView[0]) {
                            Image(systemName: "airplane")
                            Text(debateEvent)
                        }.padding()
                        
                    } .navigationTitle("Debate Events")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
