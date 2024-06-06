//
//  Story.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct Story: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
    
    static let story1 = Story(
        image: "1",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story2 = Story(
        image: "2",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story3 = Story(
        image: "3",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story4 = Story(
        image: "4",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story5 = Story(
        image: "5",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story6 = Story(
        image: "6",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story7 = Story(
        image: "7",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story8 = Story(
        image: "8",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story9 = Story(
        image: "9",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story10 = Story(
        image: "10",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story11 = Story(
        image: "11",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story12 = Story(
        image: "12",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story13 = Story(
        image: "13",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story14 = Story(
        image: "14",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story15 = Story(
        image: "15",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story16 = Story(
        image: "16",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story17 = Story(
        image: "17",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
    
    static let story18 = Story(
        image: "18",
        title: "Text Text Text Text Text Text Text Text Text Text",
        description: "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"
    )
}

struct StoryGroup: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let stories: [Story]
    
    static let storyGroup1 = StoryGroup(
        image: "preview1",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story1, .story2]
    )
    
    static let storyGroup2 = StoryGroup(
        image: "preview2",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story3, .story4]
    )
    
    static let storyGroup3 = StoryGroup(
        image: "preview3",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story5, .story6]
    )
    
    static let storyGroup4 = StoryGroup(
        image: "preview4",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story7, .story8]
    )
    
    static let storyGroup5 = StoryGroup(
        image: "preview5",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story9, .story10]
    )
    
    static let storyGroup6 = StoryGroup(
        image: "preview6",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story11, .story12]
    )
    
    static let storyGroup7 = StoryGroup(
        image: "preview7",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story13, .story14]
    )
    
    static let storyGroup8 = StoryGroup(
        image: "preview8",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story15, .story16]
    )
    
    static let storyGroup9 = StoryGroup(
        image: "preview9",
        title: "Text Text Text Text Text Text Text Text Text Text",
        stories: [.story17, .story18]
    )
}
