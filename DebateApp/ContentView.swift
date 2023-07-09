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
      
    @State private var showMenu: Bool = false
    
    var body: some View {
        // Home()
        NavigationView {
              
              ZStack {
                
                Color.mint.ignoresSafeArea(.all, edges: .all)
                
                VStack {
                  Text("ContentView")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                }
                
                GeometryReader { _ in
                  
                  HStack {
                    Spacer()
                    
                    SideMenuView()
                      .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                      .animation(.easeInOut(duration: 0.4), value: showMenu)
                  }
                  
                }
                .background(Color.black.opacity(showMenu ? 0.5 : 0))
                
              }
              .navigationTitle("Home")
              .navigationBarTitleDisplayMode(.inline)
              .toolbar {
                
                Button {
                  self.showMenu.toggle()
                } label: {
                  
                  if showMenu {
                    
                    Image(systemName: "xmark")
                      .font(.title)
                      .foregroundColor(.red)
                    
                  } else {
                    Image(systemName: "text.justify")
                      .font(.title)
                      .foregroundColor(.red)
                  }
                  
                }
              }
        }.navigationBarBackButtonHidden(true)
          }
//        NavigationView {
//            VStack {
//                List {
//                    ForEach(debates, id: \.self) { debateEvent in
//                        NavigationLink(destination: debateView[0]) {
//                            Image(systemName: "airplane")
//                            Text(debateEvent)
//                        }.padding()
//
//                    } .navigationTitle("Debate Events")
//                }
//            }
//        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
