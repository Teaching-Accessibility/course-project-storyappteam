//
//  Next Week.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//Attribution: Created by a participant's therapist. When we have more information about how we should credit them, we will update this attribution.
//

import SwiftUI

var nw1 = Character(name: "Juliana", gender: .female, image: .christine)
var nw2 = Character(name: "Jana", gender: .female, image: .megan)
var nw3 = Character(name: "Elena", gender: .female, image: .nina)
var nw4 = Character(name: "Java", gender: .female, image: .sarah)
var nw5 = Character(name: "Amanda", gender: .female, image: .alia)


var charactersDictionary: [String: Character] = [
    "nw1": nw1,
    "nww": nw2,
    "nw3": nw3,
    "nw4": nw4,
    "nw5": nw5
]

var nextweek = Story(
    id: 0,
    title: "Next Week",
    previewImage: Image(systemName: "calendar"),
    
    pages: [
        StoryPage( // 0
        """
        Today is Friday. I go to club with {nw1name} and {nw2name}.
        """,
        choices: [
            Choice(text: "Next", destination: 1)
        ],
        characters: [
            "nw1": .happy,
            "nw2": .happy
        ]
                 ),
        StoryPage( // 1
        """
        Tomorrow is Saturday. The next day is Sunday. It is the weekend.
        
        I will stay home or do something with my family.
        """,
        choices: [
            Choice(text: "Next", destination: 2)
        ]
                 ),
        StoryPage( // 2
        """
        The next day is Monday. I will go to school on Monday. 
        
        In the afternoon, {nw3name} and {nw4name} will come to my house.
        """,
        choices: [
            Choice(text: "Next", destination: 3)
        ],
        characters: [
            "nw3": .happy,
            "nw4": .happy
        ]
                 ),
        StoryPage( // 3
        """
        The next day is Tuesday, and the day after that is Wednesday. 
        
        I will go to school.
        """,
        choices: [
            Choice(text: "Next", destination: 4)
        ]
                 ),
        StoryPage( // 4
        """
        After that, it will be Thursday. 
        
        I will go to school in the morning and club with {nw5name} in the afternoon.
        """,
        choices: [
            Choice(text: "Next", destination: 5)
        ],
        characters: [
            "friend5": .happy,
        ]
                 ),
        StoryPage( // 5
        """
        Then it will be Friday again. 
        
        I will go to school in the morning and club with {nw3name} in the afternoon.
        """,
        choices: [
            Choice(text: "Next", destination: 6)
        ],
        characters: [
            "nw3": .happy,
        ]
                 ),
        StoryPage( // 6
        """
        I will have a great week! If I need help, I can ask an adult to help me.
        
        I will have fun! I am a great kid!
        """,
        choices: [
            
        ]
                 ),
    ], characters: charactersDictionary)
