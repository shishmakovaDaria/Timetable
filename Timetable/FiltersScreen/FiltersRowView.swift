//
//  FiltersRowView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct FiltersRowView: View {
    @State private var isChecked: Bool = false
    var title: String
    var isCheckbox: Bool
    
    var body: some View {
        HStack {
            Text("\(title)")
                .font(.system(size: 17, weight: .regular))
                .foregroundStyle(.ttBlack)
                .listRowSeparator(.hidden)
            if isCheckbox {
                Toggle(isOn: $isChecked) {}
                    .toggleStyle(CheckboxToggleStyle())
            } else {
                Toggle(isOn: $isChecked) {}
                    .toggleStyle(CheckcircleToggleStyle())
            }
           
        }
        .frame(height: 60)
        .background(.ttWhite)
    }
}

struct CheckboxToggleStyle: ToggleStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    HStack {
      configuration.label
      Spacer()
      Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
        .resizable()
        .frame(width: 20, height: 20)
        .onTapGesture { configuration.isOn.toggle() }
    }
  }
}

struct CheckcircleToggleStyle: ToggleStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    HStack {
      configuration.label
      Spacer()
        Image(uiImage: configuration.isOn ? UIImage.radioButton : UIImage.radioButtonOff)
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(.ttBlack)
            .frame(width: 20, height: 20)
            .onTapGesture { configuration.isOn.toggle() }
    }
  }
}

#Preview {
    FiltersRowView(title: "Утро 06:00 - 12:00", isCheckbox: false)
}
