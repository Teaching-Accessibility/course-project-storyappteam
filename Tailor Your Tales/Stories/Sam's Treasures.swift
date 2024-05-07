//
//  Next Week.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI

let samstreasures = Story(
    id: 1,
    title: "Sam's Treasures",
    previewImage: Image(systemName: "figure.walk"),
    pages: [
        StoryPage( // 0
        """
        Sam and Dara were at the park. A shiny sparkle caught Sam's eye.
        """,
        choices: [
            Choice(text: "Next", destination: 1)
        ]
                 ),
        StoryPage( // 1
        """
        A crystal ball! A magic pearl! A treasure for Sam's collection!
        """,
        choices: [
            Choice(text: "Next", destination: 2)
        ]
                 ),
        StoryPage( // 2
        """
        That's not treasure - that's junk",
        
        said Dara.
        """,
        choices: [
            Choice(text: "Next", destination: 3)
        ]
                 ),
        StoryPage( // 3
        """
        She didn't like the things Sam found.
        """,
        choices: [
            Choice(text: "Next", destination: 4)
        ]
                 ),
        StoryPage( // 4
        """
        That was fine with Sam.
        "Time to go treasure hunting!"
        
        Off he went with his backpack.
        """,
        choices: [
            Choice(text: "Next", destination: 5)
        ]
                 ),
        StoryPage( // 5
        """
        Between the bushes Sam found a crown and a magic wand.
        """,
        choices: [
            Choice(text: "Next", destination: 6)
        ]
                 ),
        StoryPage( // 6
        """
        Under an old log he found monsters and creepy creatures.
        
        No thank you!
        """,
        choices: [
            Choice(text: "Next", destination: 7)
        ]
                 ),
        StoryPage( // 7
        """
        Among the flowers Sam found a chest and a ring.
        """,
        choices: [
            Choice(text: "Next", destination: 8)
        ]
                 ),
        StoryPage( // 8
        """
        In the stream Sam found a message in a bottle and a wise old wizard.
        """,
        choices: [
            Choice(text: "Next", destination: 9)
        ]
                 ),
        StoryPage( // 9
        """
        By the lamp post Sam found a sports car and a victory trophy. Time to show Dara all the treausres he had found!
        """,
        choices: [
            Choice(text: "Next", destination: 10)
        ]
                 ),
        StoryPage( // 10
        """
        Dara was crying.
        "I lost my ring," siad Dara.
        "I don't know where I dropped it."
        """,
        choices: [
            Choice(text: "Next", destination: 11)
        ]
                 ),
        StoryPage( // 11
        """
        That sounded like something Sam had found.
        
        It was! It was Dara's ring!
        """,
        choices: [
            Choice(text: "Next", destination: 12)
        ]
                 ),
        StoryPage( // 12
        """
        "Thank you, Sam! You DO find treasures!"
        """,
        choices: [
            
        ]
                 ),
    ])
