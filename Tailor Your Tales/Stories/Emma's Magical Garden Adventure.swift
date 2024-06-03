//
//  Monday Morning.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/30/24.
//

import SwiftUI


var e1 = CharacterMod(name: "Emma", gender: .female, nameColor: .red, image: .alia)
var e2 = CharacterMod(name: "Mom", gender: .female, nameColor: .red, image: .nina)
var e3 = CharacterMod(name: "Grandma", gender: .female, nameColor: .red, image: .elizabeth)



var emmaCharacters: [String: CharacterMod] = [
    "child": e1,
    "parent": e2,
    "grandparent": e3
]

let emmasAdventure = StoryMod(
id: 8,
title: "Emma's Magical Garden Adventure",
previewImage: Image(systemName: "ladybug"),
pages: [
StoryPage( // 0
"""
       {childname} loves exploring {grandparentname}'s garden.

       One sunny morning, {childname} decides to have an adventure.

       Where to start?
""",
choices: [
Choice(text: "Flower Patch", destination: 1),
Choice(text: "Vegetable Patch", destination: 5)
],
characters: [
    "child": .happy,
    "grandparent": .happy
]
),
StoryPage( // 1 flower patch start
"""
        {childname} wanders to the flower patch.
        The bright colorful flowers are very beautiful.

""",
choices: [
Choice(text: "Next", destination: 2)
],
characters: [
    "child": .happy
]
),
StoryPage( // 2
"""
       {grandparentname} has given permission for the flowers to be picked from the garden.

       {childname} collects so many flowers with pretty, pretty petals.
""",
choices: [
Choice(text: "Next", destination: 3)
],
characters: [
    "child": .love,
    "grandparent": .happy
    
]
),
StoryPage( // 3
"""
      There's enough for a whole bouquet! {grandparentname} would love a bouquet.

      {childname} skips over to {grandparentname} and hands over the bouquet.

""",
choices: [
Choice(text: "Next", destination: 4)
],
characters: [
    "child": .happy,
    "grandparent": .neutral
]
),
StoryPage( // 4
"""
        {grandparentname} gets really happy and tears fill her eyes. Happy tears, {parentname} calls them!

        {grandparentname} scoops {childname} up into a big bear hug and says thank you for the flowers.
""",
choices: [

],
characters: [
    "child": .happy,
    "grandparent": .love,
    "parent": .love
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
    "child": .happy,
]
),
StoryPage( // 6
"""
      But only the ones in the ground. Dinner table veggies have zero bugs.

      {childname} wants to find all the cool bugs {grandparentname}'s vegetables have.
""",
choices: [
    Choice(text: "Next", destination: 7)
],
characters: [
    "child": .happy,
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

      {childname} wonders what colors the new butterfly will be.
""",
choices: [
    Choice(text: "Next", destination: 9)
],
characters: [
    "child": .neutral,
]
),
StoryPage( // 9
"""
    Over at the edge of the garden, a ladybug lands on a cabbage and starts eating a pest.

    Tiny with red and black spotted wings, {childname} thinks this has to be the coolest bug ever.
""",
choices: [
    
],
characters: [
    "child": .love
]
),
],characters: emmaCharacters
)
