//
//  MyWebView.swift
//  WebViewTest
//
//  Created by LeeHsss on 2021/07/26.
//

import SwiftUI
import WebKit

// UIKit의 UIView를 사용할 수 있도록 한다.
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    // UIVIew 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    // Update Ui View
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
