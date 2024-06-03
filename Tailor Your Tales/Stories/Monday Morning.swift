//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var mm1 = Character(name: "Row", gender: .female, image: .megan)
var mm2 = Character(name: "Dad", gender: .female, image: .derrick)


var mondayCharacters: [String: Character] = [
    "main": mm1,
    "parent": mm2
]

let mondayMorning = Story(
id: 3,
title: "Monday Morning",
previewImage: Image(systemName: "sun.horizon"),
pages: [
StoryPage( // 0
"""
        It's Monday! The sun is shining.
        It's time for {mainname} to get ready for school.

""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "main": .neutral,
]
),
StoryPage( // 1
"""
        {mainname} hops out of bed and goes to the bathroom to wash up.
""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "main": .happy,
]
),
StoryPage( // 2
"""
        {mainname} brushes her teeth for 2 whole minutes and doesn't forget to get her tongue too!
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "main": .happy
]
),
StoryPage( // 3
"""
        Row washes her face and puts on her clothes.

        Oh, can't forget socks! Especially not the dinosaur ones.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "main": .happy,
]
),
StoryPage( // 4
"""
        Breakfast time! {parentname} makes waffles and scrambled eggs.

""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "main": .love,
    "parent": .happy,
]
),
StoryPage( // 5
"""
        After breakfast, the school bus honks outside and it is time to go to school.
""",
choices: [
Choice(text: "Next", destination: 6)
]
),
StoryPage( // 6
"""
        {mainname}, excited for school today, puts on shoes and races to the bus.
""",
choices: [

],
characters: [
    "main": .happy,
]
),
],characters: mondayCharacters
)
