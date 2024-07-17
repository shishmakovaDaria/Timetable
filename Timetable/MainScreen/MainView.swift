//
//  MainView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct MainView: View {
    @State var findButtonIsHidden = true
    @State private var fromPath: PathModel = PathModel(city: City(title: "", stations: []), station: Station(title: "", code: ""))
    @State private var toPath: PathModel = PathModel(city: City(title: "", stations: []), station: Station(title: "", code: ""))
    @State private var fromTextField: String = ""
    @State private var toTextField: String = ""
    @State private var isPresentingSchedule = false
    
    var body: some View {
        VStack {
            StoriesGridView()
                .padding(.top, 24)
                .padding([.leading, .trailing], 16)
                .frame(height: 188)
            ChoosingView(fromPath: $fromPath, fromTextField: $fromTextField, toPath: $toPath, toTextField: $toTextField)
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
        
        .onChange(of: fromPath.station.title, perform: { _ in
            fromTextField = fromPath.pathString
            if fromPath.city.title != "" && toPath.city.title != "" {
                findButtonIsHidden = false
            }
        })
        
        .onChange(of: toPath.station.title, perform: { _ in
            toTextField = toPath.pathString
            if fromPath.city.title != "" && toPath.city.title != "" {
                findButtonIsHidden = false
            }
        })
        .fullScreenCover(isPresented: $isPresentingSchedule) {
            ScheduleView(fromPath: fromPath, toPath: toPath)
        }
    }
}

#Preview {
    MainView()
}
