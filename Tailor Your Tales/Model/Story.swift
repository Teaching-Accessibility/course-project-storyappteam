//
//  Story.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct Story: Identifiable, Equatable {
    var id: Int
    var title: String
    var previewImage: Image
    var pages: [StoryPage]
    var characters: [String: Character]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
    //Function to allow to check for equality between stories - checks ID
    static func == (S1: Story, S2: Story) -> Bool {
        return S1.id == S2.id //&& S1.title == S2.title
    }
}

struct StoryPage {
    var text: String
    var choices: [Choice]
    var characters: [String : Emotion]?

    init(_ text: String, choices: [Choice], characters: [String : Emotion]? = nil) {
        self.text = text
        self.choices = choices
        self.characters = characters
    }
}

struct Choice {
    let text: String
    let destination: Int
}
