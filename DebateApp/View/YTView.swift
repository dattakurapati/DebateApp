//
//  YTView.swift
//  DebateApp
//
//  Created by Kaushik Kurapati on 7/6/23.
//

import SwiftUI
import WebKit

struct YTView: View {
    let ID: String
    var body: some View {
        Video(videoID: ID)
            .frame(width: 350, height: 190)
            .cornerRadius(12)
            .padding(.horizontal, 24)
    }}

struct YTView_Previews: PreviewProvider {
    static var previews: some View {
        YTView(ID: "")
    }
}

struct Video:UIViewRepresentable {
    
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
      return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
      guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
      uiView.scrollView.isScrollEnabled = false
      uiView.load(URLRequest(url: youtubeURL))
    }
    
}
