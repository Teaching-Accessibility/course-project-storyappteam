//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var am1 = Character(name: "Alex", gender: .male, image: .joe)
var am2 = Character(name: "Dr. Bongi", gender: .male, image: .rohit)
var am3 = Character(name: "Mom", gender: .female, image: .bella)


var alexCharacters: [String: Character] = [
    "am1": am1, //child
    "am2": am2, //doctor
    "am3": am3 //parent
]

let alexsSuperMedicine = Story(
id: 7,
title: "Alex's Super Medicine",
previewImage: Image(systemName: "medical.thermometer"),
pages: [
StoryPage( // 0
"""
       "I'm not feeling so good, {am3name}." {am1name} says.
""",
choices: [
Choice(text: "Next", destination: 1)
],
characters: [
    "am1": .sad,
    "am3": .neutral
]
),
StoryPage( // 1
"""
        {am3name} packs up the car and says it is time to go see {am2name}.

""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "am3": .happy
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
    "am2": .happy
]
),
StoryPage( // 3
"""
      There is medicine and syringes and so many tubes and machines that will make you feel all better!

      {am2name} prescribes {am1name} some medicine. Medicine will help {am1name} feel much better soon.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "am1": .happy,
    "am2": .happy
]
),
StoryPage( // 4
"""
        But {am1name} doesn't like medicine, it's yucky.


        But it will take the icky feeling away. So {am1name} tries the medicine anyway.
""",
choices: [
Choice(text: "Next", destination: 5)
],
characters: [
    "am1": .sad
]
),
StoryPage( // 5
"""
        And wait! What's this? Something is happening.

        Oh, {am1name} already feels so much better!
""",
choices: [
Choice(text: "Next", destination: 6)
],
characters: [
    "am1": .happy,
    "am3": .happy
]
),
StoryPage( // 6
"""
      You did it, {am1name}! We're so proud of you.
""",
choices: [

],
characters: [
    "am2": .happy,
    "am1": .love,
    "am3": .love
]
),
],characters: alexCharacters
)
