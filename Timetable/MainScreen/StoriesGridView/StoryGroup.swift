//
//  StoryGroup.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import Foundation

struct StoryGroup: Identifiable {
    let id: Int
    let image: String
    let title: String
    let isShown: Bool
    let stories: [Story]
    
    func update(isShown: Bool) -> Self {
        .init(id: id, image: image, title: title, isShown: isShown, stories: stories)
    }
}
