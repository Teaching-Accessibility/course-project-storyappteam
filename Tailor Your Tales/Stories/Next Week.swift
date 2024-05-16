//
//  Next Week.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//Attribution: Created by a participant's therapist. When we have more information about how we should credit them, we will update this attribution.
//

import SwiftUI

var c1 = Character(name: "Juliana", gender: .female, nameColor: .red)
var c2 = Character(name: "Jana", gender: .female, nameColor: .green)
var c3 = Character(name: "Elena", gender: .female, nameColor: .red)
var c4 = Character(name: "Java", gender: .female, nameColor: .green)
var c5 = Character(name: "Amanda", gender: .female, nameColor: .red)


var charactersDictionary: [String: Character] = [
    "friend1": c1,
    "friend2": c2,
    "friend3": c3,
    "friend4": c4,
    "friend5": c5
]

var nextweek = Story(
    id: 0,
    title: "Next Week",
    previewImage: Image(systemName: "calendar"),
    
    pages: [
        StoryPage( // 0
        """
        Today is Friday. I go to club with {friend1name} and {friend2name}.
        """,
        choices: [
            Choice(text: "Next", destination: 1)
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
        
        In the afternoon, {friend3name} and {friend4name} will come to my house.
        """,
        choices: [
            Choice(text: "Next", destination: 3)
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
        
        I will go to school in the morning and club with {friend5name} in the afternoon.
        """,
        choices: [
            Choice(text: "Next", destination: 5)
        ]
                 ),
        StoryPage( // 5
        """
        Then it will be Friday again. 
        
        I will go to school in the morning and club with {friend3name} in the afternoon.
        """,
        choices: [
            Choice(text: "Next", destination: 6)
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
