//
//  SafariView.swift
//  WebView_LAB17
//
//  Created by 장여훈 on 2023/08/03.
//


import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    var data: Data
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let safariViewController = SFSafariViewController(url: URL(string: data.url)!)
        
        return safariViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct SafariView_Previews: PreviewProvider {
  
    static var previews: some View {
        SafariView(data: Data(siteName: "naver", url: "http://www.naver.com"))
    }
}
