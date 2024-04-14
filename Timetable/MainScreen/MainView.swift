//
//  MainView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct MainView: View {
    @State var findButtonIsHidden = false
    
    var body: some View {
        VStack {
            ChoosingView()
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
    }
    
    private func findTapped() {
        // TODO: переход на список перевозчиков
    }
}

#Preview {
    MainView()
}
