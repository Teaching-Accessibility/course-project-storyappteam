//
//  Alex's Super Medicine.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//
// Attribution: This story was modified from the original story illustrated by Heather Jenkins, written by Kim Rex, designed by Anita van der Merwe and edited by Angela Briggs with the help of the Book Dash Participants in Cape Town on 14 May 2022
// The work is licensed under a Creative Commons Attribution 4.0 License: https://creativecommons.org/licenses/by/4.0/
// The original text can be found here: https://www.storyberries.com/bedtime-stories-alexs-super-medicine-short-stories-for-kids/


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
choices: [Choice(text: "Back", destination: 0),
Choice(text: "Next", destination: 2)
],
characters: [
    "am3": .happy
]
),
StoryPage( // 2
"""
        {am2name} can help. {am2name} works at a hospital.
""",
choices: [Choice(text: "Back", destination: 1),
Choice(text: "Next", destination: 3)
],
characters: [
    "am2": .happy
]
),
StoryPage( // 3
"""
      There is medicine and syringes and so many tubes and machines that will make you feel all better!

""",
choices: [Choice(text: "Back", destination: 2),
Choice(text: "Next", destination: 4)
],
characters: [
    "am1": .happy,
    "am2": .happy
]
),
StoryPage( // 4
"""
        {am2name} prescribes {am1name} some medicine.
        Medicine will help {am1name} feel much better soon.
""",
choices: [Choice(text: "Back", destination: 3),
Choice(text: "Next", destination: 5)
],
characters: [
    "am1": .happy,
    "am2": .happy
]
),
StoryPage( // 5
"""
        But {am1name} doesn't like medicine, it's yucky.
        
""",
choices: [Choice(text: "Back", destination: 4),
Choice(text: "Next", destination: 6)
],
characters: [
    "am1": .sad
]
),
StoryPage( // 6
"""
        But it will take the icky feeling away. So {am1name} tries the medicine anyway.
        And wait! What's this? Something is happening.
""",
choices: [Choice(text: "Back", destination: 5),
Choice(text: "Next", destination: 7)
],
characters: [
    "am1": .happy,
    "am3": .happy
]
),
StoryPage( // 7
"""
      Oh, {am1name} already feels so much better!
      You did it, {am1name}! We're so proud of you.
""",
choices: [Choice(text: "Back", destination: 6),
          Choice(text: "Next", destination: 8),
],
characters: [
    "am2": .happy,
    "am1": .love,
    "am3": .love
]
),
StoryPage( // 8
"""
THE END.
""",
choices: [Choice(text: "Back", destination: 7),

],
characters: [:
]
),
],characters: alexCharacters
)
