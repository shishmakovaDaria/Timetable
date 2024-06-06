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
    var isShown: Bool
    let stories: [Story]
    
    static let storyGroup1 = StoryGroup(
        id: 1,
        image: "preview1",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story1, .story2]
    )
    
    static let storyGroup2 = StoryGroup(
        id: 2,
        image: "preview2",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story3, .story4]
    )
    
    static let storyGroup3 = StoryGroup(
        id: 3,
        image: "preview3",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story5, .story6]
    )
    
    static let storyGroup4 = StoryGroup(
        id: 4,
        image: "preview4",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story7, .story8]
    )
    
    static let storyGroup5 = StoryGroup(
        id: 5,
        image: "preview5",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story9, .story10]
    )
    
    static let storyGroup6 = StoryGroup(
        id: 6,
        image: "preview6",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story11, .story12]
    )
    
    static let storyGroup7 = StoryGroup(
        id: 7,
        image: "preview7",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story13, .story14]
    )
    
    static let storyGroup8 = StoryGroup(
        id: 8,
        image: "preview8",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story15, .story16]
    )
    
    static let storyGroup9 = StoryGroup(
        id: 9,
        image: "preview9",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story17, .story18]
    )
}
