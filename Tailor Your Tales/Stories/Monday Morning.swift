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
    "mm1": mm1, //mm1 Character
    "mm2": mm2  //mm2
]

let mondayMorning = Story(
id: 3,
title: "Monday Morning",
previewImage: Image(systemName: "sun.horizon"),
pages: [
StoryPage( // 0
"""
        It's Monday! The sun is shining.
        It's time for {mm1name} to get ready for school.

""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "mm1": .neutral,
]
),
StoryPage( // 1
"""
        {mm1name} hops out of bed and goes to the bathroom to wash up.
""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "mm1": .happy,
]
),
StoryPage( // 2
"""
        {mm1name} brushes her teeth for 2 whole minutes and doesn't forget to get her tongue too!
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "mm1": .happy
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
    "mm1": .happy,
]
),
StoryPage( // 4
"""
        Breakfast time! {mm2name} makes waffles and scrambled eggs.

""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "mm1": .love,
    "mm2": .happy,
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
        {mm1name}, excited for school today, puts on shoes and races to the bus.
""",
choices: [

],
characters: [
    "mm1": .happy,
]
),
],characters: mondayCharacters
)
