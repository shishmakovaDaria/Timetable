//
//  SettingsView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State var showWebView = false
    
    var body: some View {
        VStack {
            List {
                Toggle("Темная тема", isOn: $isDarkMode)
                    .tint(.ttBlue)
                    .listRowSeparator(.hidden)
                HStack {
                    Button("Пользовательское соглашение") {
                        showWebView.toggle()
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            Spacer()
            Text("Приложение использует API «Яндекс.Расписания»")
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.ttBlack)
            Text("Версия 1.0 (beta)")
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.ttBlack)
                .padding([.leading, .top, .trailing], 16)
                .padding(.bottom, 24)
        }
        .fullScreenCover(isPresented: $showWebView) {
            TermsOfUse(showWebView: $showWebView, url: URL(string: "https://yandex.ru/legal/practicum_offer/")!)
        }
    }
}

#Preview {
    SettingsView()
}
