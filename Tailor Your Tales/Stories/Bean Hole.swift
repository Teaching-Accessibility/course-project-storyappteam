//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var b1 = Character(name: "Tom", gender: .male, nameColor: .red, image: .matt)
var b2 = Character(name: "Mummy", gender: .female, nameColor: .red, image: .alia)


var beanholeCharacters: [String: Character] = [
    "child": b1,
    "parent": b2
]

let beanhole = Story(
id: 6,
title: "Bean Hole",
previewImage: Image(systemName: "carrot"),
pages: [
StoryPage( // 0
"""
       {childname} was four years old and had every single tooth.
""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "child": .happy,
]
),
StoryPage( // 1
"""
        One day {childname} turned five and one of them fell out. But that's okay! {parentname} says it happens to everyone.
""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "child": .happy,
    "parent": .happy
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
    "child": .happy
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
    "child": .neutral,
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
    "child": .happy
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
    "child": .happy,
    "parent": .happy
]
),
StoryPage( // 6
"""
       Later, {childname} discovered that his hole was not just a bean hole. It was also a spaghetti hole.

       And a carrot-stick hole. And an asparagus hole. And a cheese hole. And even a sticking-out-the-tongue hole!
""",
choices: [
Choice(text: "Next", destination: 7)
],
characters: [
    "child": .love,
]
),
StoryPage( // 7
"""
        {childname} was almost sad when the new tooth came through and bean hole went away.
""",
choices: [
Choice(text: "Next", destination: 8)
],
characters: [
    "child": .sad
]
),
StoryPage( // 8
"""
        But luckily there were 19 more bean holes to come!
""",
choices: [

],
characters: [
    "child": .happy
]
),
],characters: beanholeCharacters
)
