//
//  WebView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        let wKWebView = WKWebView()
        return wKWebView
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
