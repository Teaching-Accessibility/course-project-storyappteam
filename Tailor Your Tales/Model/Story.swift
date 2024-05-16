//
//  Story.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct Story: Identifiable, Equatable {
    var id: Int
    let title: String
    let previewImage: Image
    let pages: [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
    //Function to allow to check for equality between stories - checks ID
    static func ==(S1: Story, S2: Story) -> Bool {
        return S1.id == S2.id //&& S1.title == S2.title
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Choice {
    let text: String
    let destination: Int
}
