//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var a1 = Character(name: "Alex", gender: .male, image: .joe)
var a2 = Character(name: "Dr. Bongi", gender: .male, image: .rohit)
var a3 = Character(name: "Mom", gender: .female, image: .bella)


var alexCharacters: [String: Character] = [
    "child": a1,
    "doctor": a2,
    "parent": a3
]

let alexsSuperMedicine = Story(
id: 7,
title: "Alex's Super Medicine",
previewImage: Image(systemName: "medical.thermometer"),
pages: [
StoryPage( // 0
"""
       "I'm not feeling so good, {parentname}." {childname} says.
""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "child": .sad,
    "parent": .neutral
]
),
StoryPage( // 1
"""
        {parentname} packs up the car and says it is time to go see {doctorname}.

""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "parent": .happy
]
),
StoryPage( // 2
"""
        Dr. Bongi can help. Dr Bongi works at a hospital.
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "doctor": .happy
]
),
StoryPage( // 3
"""
      There is medicine and syringes and so many tubes and machines that will make you feel all better!

      {doctorname} prescribes {childname} some medicine. Medicine will help {childname} feel much better soon.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "child": .happy,
    "doctor": .happy
]
),
StoryPage( // 4
"""
        But {childname} doesn't like medicine, it's yucky.


        But it will take the icky feeling away. So {childname} tries the medicine anyway.
""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "child": .sad
]
),
StoryPage( // 5
"""
        And wait! What's this? Something is happening.

        Oh, {childname} already feels so much better!
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
      You did it, {childname}! We're so proud of you.
""",
choices: [

],
characters: [
    "doctor": .happy,
    "child": .love,
    "parent": .love
]
),
],characters: alexCharacters
)
