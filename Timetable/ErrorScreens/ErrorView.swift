//
//  ServerErrorView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

enum ErrorType: String {
    case server = "Ошибка сервера"
    case internet = "Нет интернета"
    
    var image: UIImage {
        switch self {
        case .server:
            UIImage.serverError
        case .internet:
            UIImage.noInternet
        }
    }
}

struct ErrorView: View {
    var type: ErrorType
    
    var body: some View {
        ZStack {
            Color.ttWhite.ignoresSafeArea()
            VStack {
                Image(uiImage: type.image)
                Text(type.rawValue)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.ttBlack)
                    .padding(.top, 16)
            }
        }
    }
}

#Preview {
    //ErrorView(type: .server)
    ErrorView(type: .internet)
}
