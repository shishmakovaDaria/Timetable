//
//  MainView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct MainView: View {
    @State var findButtonIsHidden = true
    @State private var fromText: String = ""
    @State private var toText = ""
    
    var body: some View {
        VStack {
            ChoosingView(fromText: $fromText, toText: $toText)
                .padding(.top, 208)
                .padding([.leading, .trailing], 16)
            if !$findButtonIsHidden.wrappedValue {
                Button("Найти") {
                    findTapped()
                }
                .frame(width: 150, height: 60)
                .background(.ttBlue)
                .clipShape(.rect(cornerRadius: 16))
                .font(.system(size: 17, weight: .bold))
                .foregroundStyle(.white)
                .padding(.top, 16)
            }
            Spacer()
        }
        
        .onChange(of: fromText, perform: { _ in
            if fromText != "" && toText != "" {
                findButtonIsHidden = false
            }
        })
        
        .onChange(of: toText, perform: { _ in
            if fromText != "" && toText != "" {
                findButtonIsHidden = false
            }
        })
    }
    
    private func findTapped() {
        // TODO: переход на список перевозчиков
    }
}

#Preview {
    MainView()
}
