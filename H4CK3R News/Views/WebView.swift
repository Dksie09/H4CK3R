//
//  WebView.swift
//  H4CK3R News
//
//  Created by Dakshi Goel on 16/05/24.
//

import Foundation

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    
    let url: String?
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = url{
            webView.load(URLRequest(url: URL(string: url!)!))}
    }
}
