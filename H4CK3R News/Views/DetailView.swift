//
//  DetailView.swift
//  H4CK3R News
//
//  Created by Dakshi Goel on 16/05/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(url: url, webView: WKWebView())
    }
}

#Preview {
    DetailView(url: "https://dakshie.xyz")
}


