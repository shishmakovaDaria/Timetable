//
//  CarrierView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct CarrierView: View {
    var carrier: Carrier
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.ttWhite.ignoresSafeArea()
                VStack {
                    Image(carrier.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 104)
                        .padding(.top, 16)
                    HStack {
                        Text(carrier.fullTitle)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(.ttBlack)
                        Spacer()
                    }
                    .padding(.top, 16)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("E-mail")
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlack)
                            Text(carrier.email)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundStyle(.ttBlue)
                        }
                        Spacer()
                    }
                    .padding(.top, 16)
                    .frame(height: 60)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Телефон")
                                .font(.system(size: 17, weight: .regular))
                                .foregroundStyle(.ttBlack)
                            Text(carrier.phone)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundStyle(.ttBlue)
                        }
                        Spacer()
                    }
                    .padding(.top, 0)
                    .frame(height: 60)
                    Spacer()
                }
                .padding(.all, 16)
            }
            .navigationBarItems(
                leading: Text("")
            )
            .toolbarRole(.editor)
            .navigationTitle("Информация о перевозчике")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
        }
    }
}

#Preview {
    CarrierView(carrier: MockData.mockCarriers[0])
}
