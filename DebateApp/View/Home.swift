//
//  Home.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/6/23.
//

import SwiftUI


struct Home: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Divider()
                    Text("Example of an LD Debate")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    
                    YTView(ID: "Dw6Nvv8UMbU")
                    
                    
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

