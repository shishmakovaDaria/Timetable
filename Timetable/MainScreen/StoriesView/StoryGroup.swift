//
//  StoryGroup.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import Foundation

struct StoryGroup: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    var isShown: Bool
    let stories: [Story]
    
    static let storyGroup1 = StoryGroup(
        image: "preview1",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story1, .story2]
    )
    
    static let storyGroup2 = StoryGroup(
        image: "preview2",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story3, .story4]
    )
    
    static let storyGroup3 = StoryGroup(
        image: "preview3",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story5, .story6]
    )
    
    static let storyGroup4 = StoryGroup(
        image: "preview4",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story7, .story8]
    )
    
    static let storyGroup5 = StoryGroup(
        image: "preview5",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story9, .story10]
    )
    
    static let storyGroup6 = StoryGroup(
        image: "preview6",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story11, .story12]
    )
    
    static let storyGroup7 = StoryGroup(
        image: "preview7",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story13, .story14]
    )
    
    static let storyGroup8 = StoryGroup(
        image: "preview8",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story15, .story16]
    )
    
    static let storyGroup9 = StoryGroup(
        image: "preview9",
        title: "Text Text Text Text Text Text Text Text Text Text",
        isShown: false,
        stories: [.story17, .story18]
    )
}
