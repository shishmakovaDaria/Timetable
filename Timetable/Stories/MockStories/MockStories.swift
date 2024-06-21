//
//  MockStories.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 16.06.2024.
//

import Foundation

enum MockStories {
    
    static private let story1 = Story(
        id: 1,
        image: "1",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story2 = Story(
        id: 2,
        image: "2",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story3 = Story(
        id: 3,
        image: "3",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story4 = Story(
        id: 4,
        image: "4",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story5 = Story(
        id: 5,
        image: "5",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story6 = Story(
        id: 6,
        image: "6",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story7 = Story(
        id: 7,
        image: "7",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story8 = Story(
        id: 8,
        image: "8",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story9 = Story(
        id: 9,
        image: "9",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story10 = Story(
        id: 10,
        image: "10",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story11 = Story(
        id: 11,
        image: "11",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story12 = Story(
        id: 12,
        image: "12",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story13 = Story(
        id: 13,
        image: "13",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story14 = Story(
        id: 14,
        image: "14",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story15 = Story(
        id: 15,
        image: "15",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story16 = Story(
        id: 16,
        image: "16",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story17 = Story(
        id: 17,
        image: "17",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static private let story18 = Story(
        id: 18,
        image: "18",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let storyGroups: [StoryGroup] = [
        .init(
            id: 1,
            image: "preview1",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story1, Self.story2]
        ),
        .init(
            id: 2,
            image: "preview2",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story3, Self.story4]
        ),
        .init(
            id: 3,
            image: "preview3",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story5, Self.story6]
        ),
        .init(
            id: 4,
            image: "preview4",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story7, Self.story8]
        ),
        .init(
            id: 5,
            image: "preview5",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story9, Self.story10]
        ),
        .init(
            id: 6,
            image: "preview6",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story11, Self.story12]
        ),
        .init(
            id: 7,
            image: "preview7",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story13, Self.story14]
        ),
        .init(
            id: 8,
            image: "preview8",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story15, Self.story16]
        ),
        .init(
            id: 9,
            image: "preview9",
            title: "Text Text Text Text Text Text Text Text Text Text",
            isShown: false,
            stories: [Self.story17, Self.story18]
        )
    ]
}


