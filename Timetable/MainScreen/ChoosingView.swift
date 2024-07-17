//
//  ChoosingView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingView: View {
    @Binding var fromPath: PathModel
    @Binding var fromTextField: String
    @Binding var toPath: PathModel
    @Binding var toTextField: String
    @State private var isPresentingChoosingCity = false
    @State private var choosingFrom: Bool = true
    
    var body: some View {
        ZStack {
            Color.ttBlue
                .clipShape(.rect(cornerRadius: 20))
            HStack {
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 96)
                        .cornerRadius(20)
                        .padding(.leading, 16)
                        .foregroundStyle(.white)
                    VStack(alignment: .leading, spacing: 28) {
                        ZStack {
                            TextField("", text: $fromTextField, prompt: Text("Откуда").foregroundColor(.ttGray))
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlackUniversal)
                                .disabled(true)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            choosingFrom = true
                            isPresentingChoosingCity = true
                        }
                        ZStack {
                            TextField("", text: $toTextField, prompt: Text("Куда").foregroundColor(.ttGray))
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlackUniversal)
                                .disabled(true)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            choosingFrom = false
                            isPresentingChoosingCity = true
                        }
                    }
                    .padding(.leading, 32)
                }
                Button(action: changeTapped) {
                    Image(.сhange)
                }
                .padding([.leading, .trailing], 16)
            }
        }
        .frame(height: 128)
        .fullScreenCover(isPresented: $isPresentingChoosingCity) {
            let destination = choosingFrom ? $fromPath : $toPath
            ChoosingCityView(destination: destination)
        }
    }
    
    private func changeTapped() {
        swap(&fromPath, &toPath)
    }
}
