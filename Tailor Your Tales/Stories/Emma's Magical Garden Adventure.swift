//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var ea1 = Character(name: "Emma", gender: .female, image: .alia)
var ea2 = Character(name: "Mom", gender: .female, image: .nina)
var ea3 = Character(name: "Grandma", gender: .female, image: .elizabeth)



var emmaCharacters: [String: Character] = [
    "ea1": ea1, //child
    "ea2": ea2, //parent
    "ea3": ea3 //grandparent
]

let emmasAdventure = Story(
id: 8,
title: "Emma's Magical Garden Adventure",
previewImage: Image(systemName: "ladybug"),
pages: [
StoryPage( // 0
"""
       {ea1name} loves exploring {ea3name}'s garden.

       One sunny morning, {ea1name} decides to have an adventure.

       Where to start?
""",
choices: [
Choice(text: "Flower Patch", destination: 1),
Choice(text: "Vegetable Patch", destination: 5)
],
characters: [
    "ea1": .happy,
    "ea3": .happy
]
),
StoryPage( // 1 flower patch start
"""
        {ea1name} wanders to the flower patch.
        The bright colorful flowers are very beautiful.

""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "ea1": .happy
]
),
StoryPage( // 2
"""
       {ea3name} has given permission for the flowers to be picked from the garden.

       {ea1name} collects so many flowers with pretty, pretty petals.
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "ea1": .love,
    "ea3": .happy
    
]
),
StoryPage( // 3
"""
      There's enough for a whole bouquet! {ea3name} would love a bouquet.

      {ea1name} skips over to {ea3name} and hands over the bouquet.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "ea1": .happy,
    "ea3": .neutral
]
),
StoryPage( // 4
"""
        {ea3name} gets really happy and tears fill her eyes. Happy tears, {ea2name} calls them!

        {ea3name} scoops {ea1name} up into a big bear hug and says thank you for the flowers.
""",
choices: [

],
characters: [
    "ea1": .happy,
    "ea3": .love,
    "ea2": .love
]
),
StoryPage( // 5 vegetable patch start
"""
        Emma skips over to the vegetable patch.

        Veggies in the ground always have the coolest bugs!
""",
choices: [
Choice(text: "Next", destination: 6)
],
characters: [
    "ea1": .happy,
]
),
StoryPage( // 6
"""
      But only the ones in the ground. Dinner table veggies have zero bugs.

      {ea1name} wants to find all the cool bugs {ea3name}'s vegetables have.
""",
choices: [
    Choice(text: "Next", destination: 7)
],
characters: [
    "ea1": .happy,
]
),
StoryPage( // 7
"""
      There goes a caterpillar crawling along a leaf. Wow, so many legs.

      On a branch, there hangs a caterpillar cocoon. It will be a beautiful butterfly really soon.

""",
choices: [
    Choice(text: "Next", destination: 8)
]
),
StoryPage( // 8
"""
      A butterfly flutters by, with pretty orange and black wings.

      {ea1name} wonders what colors the new butterfly will be.
""",
choices: [
    Choice(text: "Next", destination: 9)
],
characters: [
    "ea1": .neutral,
]
),
StoryPage( // 9
"""
    Over at the edge of the garden, a ladybug lands on a cabbage and starts eating a pest.

    Tiny with red and black spotted wings, {ea1name} thinks this has to be the coolest bug ever.
""",
choices: [
    
],
characters: [
    "ea1": .love
]
),
],characters: emmaCharacters
)
