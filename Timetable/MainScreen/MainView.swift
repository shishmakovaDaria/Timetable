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
    @State private var isPresentingSchedule = false
    
    var body: some View {
        VStack {
            StoriesGridView()
                .padding(.top, 24)
                .padding([.leading, .trailing], 16)
                .frame(height: 188)
            ChoosingView(fromText: $fromText, toText: $toText)
                .padding(.top, 20)
                .padding([.leading, .trailing], 16)
            if !$findButtonIsHidden.wrappedValue {
                Button("Найти") {
                    isPresentingSchedule = true
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
        .background(.ttWhite)
        
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
        
        .fullScreenCover(isPresented: $isPresentingSchedule) {
            ScheduleView(fromText: fromText, toText: toText)
        }
    }
}

#Preview {
    MainView()
}
