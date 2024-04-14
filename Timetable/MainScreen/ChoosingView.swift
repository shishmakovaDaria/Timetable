//
//  ChoosingView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingView: View {
    @State private var fromText: String = ""
    @State private var toText = ""
    @State private var isPresentingChoosingCity = false
    
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
                            TextField("Откуда", text: $fromText)
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlack)
                                .disabled(true)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                           isPresentingChoosingCity = true
                        }
                        ZStack {
                            TextField("Куда", text: $toText)
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlack)
                                .disabled(true)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
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
            ChoosingCity()
        }
    }
    
    private func changeTapped() {
        swap(&fromText, &toText)
    }
}

#Preview {
    ChoosingView()
}
