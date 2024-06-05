//
//  The Dark.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//
// Attribution: This story was modified from the original story illustrated by Yesim Serce, written by Jade Maitre, designed and edited by Jade Maitre. First published in 2023 by Smart Projects Consulting as Storyberries
// The work is licensed under a Creative Commons Attribution 4.0 License: https://creativecommons.org/licenses/by/4.0/
// The original text can be found here: https://www.storyberries.com/bedtime-stories-the-dark-is-friendly-short-stories-for-kids/


import SwiftUI

let theDark = Story(
id: 5,
title: "The dark is friendly",
previewImage: Image(systemName: "moon"),
pages: [
StoryPage( // 0
"""
        The dark is friendly.

""",
choices: [
Choice(text: "Next", destination: 1)
]
),
StoryPage( // 1
"""
        It hugs me in the night time when it's time to go to sleep.
""",
choices: [Choice(text: "Back", destination: 0),
Choice(text: "Next", destination: 2)
]
),
StoryPage( // 2
"""
        When I close my eyes, it tucks in close, like blankets, so that I can see my dreams better.
""",
choices: [Choice(text: "Back", destination: 1),
Choice(text: "Next", destination: 3)
]
),
StoryPage( // 3
"""
        When it is a hot sunny day, the friendly dark gives me a cool spot of shade.

""",
choices: [Choice(text: "Back", destination: 2),
Choice(text: "Next", destination: 4)
]
),
StoryPage( // 4
"""
        When I dive beneath the waves, it shows me where the clouds are.

""",
choices: [Choice(text: "Back", destination: 3),
Choice(text: "Next", destination: 5)
]
),
StoryPage( // 5
"""
        It helps me hide when I play hide and seek.

        And it follows me, as my shadow, to make sure I am never lonely.

""",
choices: [Choice(text: "Back", destination: 4),
Choice(text: "Next", destination: 6)
]
),
StoryPage( // 6
"""
        At night time, the friendly dark makes the moon and the stars look so pretty.

        And in the silence of dark, I am able to find a safe place to fall asleep.

""",
choices: [Choice(text: "Back", destination: 5),
    Choice(text: "Next", destination: 7)
]
),
StoryPage( // 7
"""
        The friendly dark is filled with lots of things I can't see.

        But they are the same nice things I can see in the day.

""",
choices: [Choice(text: "Back", destination: 6),
    Choice(text: "Next", destination: 8)
]
),
StoryPage( // 8
"""
       Toys and books and pillows, and trees and houses and sky.

""",
choices: [Choice(text: "Back", destination: 7),
    Choice(text: "Next", destination: 9)
]
),
StoryPage( // 9
"""
       The friendly dark cuddles us all night long, until we are ready for morning.

""",
choices: [Choice(text: "Back", destination: 8),
    Choice(text: "Next", destination: 10)
]
),
StoryPage( // 10
"""
       And in the morning, when the sun comes up, the friendly dark dances with tree branches, until it is nighttime again.

""",
choices: [Choice(text: "Back", destination: 9),
          Choice(text: "Next", destination: 11),
]
),
StoryPage( // 11
"""
THE END.
""",
choices: [Choice(text: "Back", destination: 10),

],
characters: [:
]
),
],characters: mcharacterDictionary
)
