//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var lp1 = Character(name: "Zara", gender: .female, image: .bella)
var lp2 = Character(name: "Dalia", gender: .female, image: .megan)


var letspartyCharacters: [String: Character] = [
    "lp1": lp1, //guest
    "lp2": lp2 //host
]

let letsParty = Story(
id: 4,
title: "Let's Party!",
previewImage: Image(systemName: "party.popper"),
pages: [
StoryPage( // 0
"""
       {lp1name} is invited to {lp2name}'s party.

       Hooray! {lp1name} gets to dress up and wear something fun.

""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "lp1": .love,
    "lp2": .happy
]
),
StoryPage( // 1
"""
        Hmmm...
        {lp1name}'s always wanted to dress like a superhero and save the day. Zoom! Zap! Kapow!
""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "lp1": .happy,
]
),
StoryPage( // 2
"""
       But would also like to be a fluffy bunny with soft ears and a wiggly nose. Нор hop!

""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "lp1": .neutral,
]
),
StoryPage( // 3
"""
        Or maybe even a very orange carrot. Crunch. Crunch. Crunch.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "lp1": .happy
]
),
StoryPage( // 4
"""
        Oh! Maybe a birthday cake. Yummmm.
""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "lp1": .happy
]
),
StoryPage( // 5
"""
        Or {lp1name} could pretend to be a great, big whale. Sploosh splash.
""",
choices: [
Choice(text: "Next", destination: 6)
],
characters: [
    "lp1": .neutral,
]
),
StoryPage( // 6
"""
        It would also be fun to dress up like a leaping, twirling
        dancer. Wheeeeeee!
""",
choices: [
Choice(text: "Next", destination: 7)
]
),
StoryPage( // 7
"""
        Hmmmm... How will {lp1name} choose what to be?
""",
choices: [
Choice(text: "Next", destination: 8)
],
characters: [
    "lp1": .neutral
]
),
StoryPage( // 8
"""
        Oh! Here's an idea! Zara will go as a superhero-bunny-carrot-birthday-cake-whale-dancer!
""",
choices: [
Choice(text: "Next", destination: 9)
],
characters: [
    "lp1": .love
]
),
StoryPage( // 9
"""
        Zoom! Zap! Kapow! Hop hop.
        Crunch. Crunch. Crunch. Yummmm.
        Sploosh splash.
        Wheeeeeee!
""",
choices: [
Choice(text: "Next", destination: 10)
],
characters: [
    "lp1": .happy
]
),
StoryPage( // 10
"""
        Let's party!
""",
choices: [

],
characters: [
    "lp1": .love,
    "lp2": .love
]
),
],characters: letspartyCharacters
)
