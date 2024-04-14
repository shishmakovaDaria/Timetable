//
//  MainView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            ChoosingView()
                .padding(.top, 208)
                .padding([.leading, .trailing], 16)
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
