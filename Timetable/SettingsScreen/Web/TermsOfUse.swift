//
//  TermsOfUse.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct TermsOfUse: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showWebView: Bool
    var url: URL
    
    var body: some View {
        NavigationStack {
            WebView(url: url)
                .ignoresSafeArea(edges: .bottom)
                .background(.ttWhite)
                .navigationBarItems(
                    leading:
                        ZStack {
                            Image(systemName: "chevron.left")
                            Button("") {
                                dismiss()
                            }
                        }
                )
                .navigationTitle("Пользовательское соглашение")
                .navigationBarTitleDisplayMode(.inline)
                .tint(.ttBlack)
        }
       
    }
}
