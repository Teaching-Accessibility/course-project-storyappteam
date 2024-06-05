//
//  Bean Hole.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//
// Attribution: This story was modified from the original story illustrated by Faishal Aziz, written by Jade Maitre, designed and edited by Jade Maitre. First published in 2023 by Smart Projects Consulting as Storyberries
// The work is licensed under a Creative Commons Attribution 4.0 License: https://creativecommons.org/licenses/by/4.0/
// The original text can be found here: https://www.storyberries.com/bedtime-stories-bean-hole-jade-maitre-short-stories-for-kids/


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
        One day {bh1name} turned five and one of them fell out. 
        But that's okay! {bh2name} says it happens to everyone.
""",
choices: [Choice(text: "Back", destination: 0),
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
choices: [Choice(text: "Back", destination: 1),
Choice(text: "Next", destination: 3)
],
characters: [
    "bh1": .happy
]
),
StoryPage( // 3
"""
    {bh1name} could feel the gum where the tooth used to be.
    It felt all soft and squishy.

""",
choices: [Choice(text: "Back", destination: 2),
Choice(text: "Next", destination: 4)
],
characters: [
    "bh1": .neutral,
]
),
StoryPage( // 4
"""
        One day, {bh1name} was eating dinner and noticed something fun and special.

""",
choices: [Choice(text: "Back", destination: 3),
Choice(text: "Next", destination: 5)
],
characters: [
    "bh1": .happy
]
),
StoryPage( // 5
"""
        You could poke a BEAN through the hole!

        "Look at that," said {bh2name}. "You have a bean hole!"
""",
choices: [Choice(text: "Back", destination: 4),
Choice(text: "Next", destination: 6)
],
characters: [
    "bh1": .happy,
    "bh2": .happy
]
),
StoryPage( // 6
"""
       Later, {bh1name} discovered that this hole was not just a bean hole. 
       It was also a spaghetti hole.

""",
choices: [Choice(text: "Back", destination: 5),
Choice(text: "Next", destination: 7)
],
characters: [
    "bh1": .love,
]
),
StoryPage( // 7
"""
       And a carrot-stick hole. And an asparagus hole. And a cheese hole. 
       And even a sticking-out-the-tongue hole!
""",
choices: [Choice(text: "Back", destination: 6),
Choice(text: "Next", destination: 8)
],
characters: [
    "bh1": .love,
]
),
StoryPage( // 8
"""
        {bh1name} was almost sad when the new tooth came through and bean hole went away.
""",
choices: [Choice(text: "Back", destination: 7),
Choice(text: "Next", destination: 9)
],
characters: [
    "bh1": .sad
]
),
StoryPage( // 9
"""
        But luckily there were 19 more bean holes to come!
""",
choices: [Choice(text: "Back", destination: 8),
          Choice(text: "Next", destination: 10),
],
characters: [
    "bh1": .happy
]
),
StoryPage( // 10
"""
THE END.
""",
choices: [Choice(text: "Back", destination: 9),

],
characters: [:
]
),
],characters: beanholeCharacters
)
