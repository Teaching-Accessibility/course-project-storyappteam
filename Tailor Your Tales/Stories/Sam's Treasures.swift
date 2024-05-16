//
//  Next Week.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI


var sc2 = Character(name: "Dara", gender: .female, nameColor: .red)
var sc1 = Character(name: "Sam", gender: .male, nameColor: .green)



var scharactersDictionary: [String: Character] = [
    "character1": sc1,
    "character2": sc2,
]

 let samstreasures = Story(
 id: 1,
 title: "Sam's Treasures",
 previewImage: Image(systemName: "figure.walk"),
 pages: [
 StoryPage( // 0
 """
         {character1name} and {character2name} were at the park. A shiny sparkle caught {character1name}'s eye.
 """,
 choices: [
 Choice(text: "Next", destination: 1)
 ]
 ),
 StoryPage( // 1
 """
 A crystal ball! A magic pearl! A treasure for {character1name}'s collection!
 """,
 choices: [
 Choice(text: "Next", destination: 2)
 ]
 ),
 StoryPage( // 2
 """
 That's not treasure - that's junk",
 
 said {character2name}.
 """,
 choices: [
 Choice(text: "Next", destination: 3)
 ]
 ),
 StoryPage( // 3
 """
 {character2name} didn't like the things {character1name} found.
 """,
 choices: [
 Choice(text: "Next", destination: 4)
 ]
 ),
 StoryPage( // 4
 """
 That was fine with {character1name}.
 "Time to go treasure hunting!"
 
 Off {character1name} went with his backpack.
 """,
 choices: [
 Choice(text: "Next", destination: 5)
 ]
 ),
 StoryPage( // 5
 """
 Between the bushes {character1name} found a crown and a magic wand.
 """,
 choices: [
 Choice(text: "Next", destination: 6)
 ]
 ),
 StoryPage( // 6
 """
 Under an old log {character1name} found monsters and creepy creatures.
 
 No thank you!
 """,
 choices: [
 Choice(text: "Next", destination: 7)
 ]
 ),
 StoryPage( // 7
 """
 Among the flowers {character1name} found a chest and a ring.
 """,
 choices: [
 Choice(text: "Next", destination: 8)
 ]
 ),
 StoryPage( // 8
 """
 In the stream {character1name} found a message in a bottle and a wise old wizard.
 """,
 choices: [
 Choice(text: "Next", destination: 9)
 ]
 ),
 StoryPage( // 9
 """
 By the lamp post {character1name} found a sports car and a victory trophy. Time to show {character2name} all the treausres he had found!
 """,
 choices: [
 Choice(text: "Next", destination: 10)
 ]
 ),
 StoryPage( // 10
 """
  {character2name} was crying.
 "I lost my ring," said {character2name}.
 "I don't know where I dropped it."
 """,
 choices: [
 Choice(text: "Next", destination: 11)
 ]
 ),
 StoryPage( // 11
 """
 That sounded like something {character1name} had found.
 
 It was! It was {character2name}'s ring!
 """,
 choices: [
 Choice(text: "Next", destination: 12)
 ]
 ),
 StoryPage( // 12
 """
 "Thank you, {character1name}! You DO find treasures!"
 """,
 choices: [
 
 ]
 ),
 ],characters: scharactersDictionary
)
 
