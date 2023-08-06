//
//  WebView.swift
//  WebView_LAB17
//
//  Created by 장여훈 on 2023/08/03.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var data: Data
    
    func makeUIView(context: Context) -> some UIView {
        let webView: WKWebView = WKWebView()
        
        if let url = URL(string: "\(data.url)") {
            webView.load(URLRequest(url: url))
        }
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(data: Data(siteName: "Apple", url: "https://developer.apple.com"))
    }
}
