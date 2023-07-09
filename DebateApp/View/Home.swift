//
//  Home.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/6/23.
//

import SwiftUI


struct Home: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                ScrollView {
                    VStack {
                        Divider()
                        Text("Example of an LD Debate")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                        
                        YTView(ID: "Dw6Nvv8UMbU")
                        
                        Text("Example of an LD Debate")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                        
                        YTView(ID: "Dw6Nvv8UMbU")
                        
                        Text("Example of an LD Debate")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                        
                        YTView(ID: "Dw6Nvv8UMbU")
                        
                        Text("Example of an LD Debate")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                        
                        YTView(ID: "Dw6Nvv8UMbU")
                    }
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
            .navigationTitle("Lincoln Douglas")
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
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

