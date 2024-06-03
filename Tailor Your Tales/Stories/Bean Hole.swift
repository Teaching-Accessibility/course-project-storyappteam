//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var bh1 = Character(name: "Tom", gender: .male, image: .matt)
var bh2 = Character(name: "Mummy", gender: .female, image: .alia)


var beanholeCharacters: [String: Character] = [
    "bh1": bh1, //child
    "bh2": bh2 //parent
]

let beanhole = Story(
id: 6,
title: "Bean Hole",
previewImage: Image(systemName: "carrot"),
pages: [
StoryPage( // 0
"""
       {bh1name} was four years old and had every single tooth.
""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "bh1": .happy,
]
),
StoryPage( // 1
"""
        One day {bh1name} turned five and one of them fell out. But that's okay! {bh2name} says it happens to everyone.
""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "bh1": .happy,
    "bh2": .happy
]
),
StoryPage( // 2
"""
        Just one tooth. It was one on the bottom.
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "bh1": .happy
]
),
StoryPage( // 3
"""
      Tom could feel the gum where the tooth used to be.
      It felt all soft and squishy.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "bh1": .neutral,
]
),
StoryPage( // 4
"""
        One day, Tom was eating dinner and noticed something fun and special.

""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "bh1": .happy
]
),
StoryPage( // 5
"""
        You could poke a BEAN through the hole!

        "Look at that," said Mummy. "You have a bean hole!"
""",
choices: [
Choice(text: "Next", destination: 6)
],
characters: [
    "bh1": .happy,
    "bh2": .happy
]
),
StoryPage( // 6
"""
       Later, {bh1name} discovered that his hole was not just a bean hole. It was also a spaghetti hole.

       And a carrot-stick hole. And an asparagus hole. And a cheese hole. And even a sticking-out-the-tongue hole!
""",
choices: [
Choice(text: "Next", destination: 7)
],
characters: [
    "bh1": .love,
]
),
StoryPage( // 7
"""
        {bh1name} was almost sad when the new tooth came through and bean hole went away.
""",
choices: [
Choice(text: "Next", destination: 8)
],
characters: [
    "bh1": .sad
]
),
StoryPage( // 8
"""
        But luckily there were 19 more bean holes to come!
""",
choices: [

],
characters: [
    "bh1": .happy
]
),
],characters: beanholeCharacters
)
