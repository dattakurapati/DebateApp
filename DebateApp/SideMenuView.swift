//
//  SideMenuView.swift
//  SideMenuDemo
//
//  Created by David Razmadze on 11/3/21.
//

import SwiftUI

struct SideMenuView: View {
    
    var events: [Events] = EventList.topEvents
    var listOfEvents = [Home(), Home()]
    
    var body: some View {
        VStack {
            //      Text("Settings")
            //        .font(.title)
            //        .foregroundColor(.white)
            //
            //      Divider()
            //        .frame(width: 200, height: 2)
            //        .background(Color.white)
            //        .padding(.horizontal, 16)
            //
            //        NavigationLink(destination: Home(), label: {
            //            Text("Home")
            //        }).foregroundColor(.white)
            //            .font(.title)
            //
            //        NavigationLink(destination: Home(), label: {
            //            Text("Debate")
            //        }).foregroundColor(.white)
            //            .font(.title)
            
            Text("Debate Events")
                .font(.system(size: 27))
                .foregroundColor(.black)
                .padding(.trailing, 65.0)
                .padding(.bottom, 2)
            
            Divider()
                .frame(width: 225, height: 1)
                .background(Color.black)
                .padding(.bottom, 10)

            
            List(events, id: \.id) {event in
                NavigationLink(destination: listOfEvents[event.location], label: {
                    Text(event.name)
                          }).foregroundColor(.black)
                            .font(.system(size: 20))
            
            }
            //        HStack {
            //            Spacer()
            //            Image(systemName: "chevron.backward")
            //                .foregroundColor(Color.white)
            //                .font(.title2)
            //                .padding(.bottom, 10)
            //            Spacer()
            //            NavigationLink(destination: Home(), label: {
            //                    Text("Lincoln Douglas")
            //            }).foregroundColor(.white)
            //                .font(.system(size: 25))
            //                .padding(.bottom, 10)
            //            Spacer()
            //        }
            //
            //
            //        HStack {
            //            Spacer()
            //            Image(systemName: "chevron.backward")
            //                .foregroundColor(Color.white)
            //                .font(.title2)
            //                .padding(.bottom, 10)
            //                .padding(.trailing, 30)
            //            Spacer()
            //            NavigationLink(destination: Home(), label: {
            //                    Text("Public Forum")
            //            }).foregroundColor(.white)
            //                .font(.system(size: 25))
            //                .padding(.bottom, 10)
            //            Spacer()
            //        }
            //
            //        HStack {
            //            Spacer()
            //            Image(systemName: "chevron.backward")
            //                .foregroundColor(Color.white)
            //                .font(.title2)
            //                .padding(.bottom, 10)
            //                .padding(.trailing, 30)
            //            Spacer()
            //            NavigationLink(destination: Home(), label: {
            //                    Text("CX/Policy Debate")
            //            }).foregroundColor(.white)
            //                .font(.system(size: 25))
            //                .padding(.bottom, 10)
            //            Spacer()
            //        }
            
            
            
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width/1.5)
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
        
    }
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
