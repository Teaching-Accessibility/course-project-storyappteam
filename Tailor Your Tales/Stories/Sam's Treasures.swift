//
//  Next Week.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.

// Attribution: This story was modified from the original story illustrated by Princess Kabeya, written by Jon Keevy, designed by Jessica Janutsch and Edited by Kelly Norwood-Young with the help of the Book Dash Participants in Cape Town on 14 May 2022
// The work is licensed under a Creative Commons Attribution 4.0 License: https://creativecommons.org/licenses/by/4.0/
// The original text can be found here: https://www.storyberries.com/bedtime-stories-sams-treasures-short-stories-for-kids/
//

import SwiftUI


var st2 = Character(name: "Dara", gender: .female, image: .bella)
var st1 = Character(name: "Sam", gender: .male, image: .joe)


var scharactersDictionary: [String: Character] = [
        "st1": st1,
        "st2": st2,
]

 let samstreasures = Story(
 id: 1,
 title: "Treasures",
 previewImage: Image(systemName: "figure.walk"),
 pages: [
 StoryPage( // 0
 """
         {st1name} and {st2name} were at the park. A shiny sparkle caught {st1name}'s eye.
 """,
 choices: [
 Choice(text: "Next", destination: 1)
 ],
 characters: [
     "st1": .happy,
     "st2": .happy
 ]
 ),
 StoryPage( // 1
 """
 A crystal ball! A magic pearl! A treasure for {st1name}'s collection!
 """,
 choices: [Choice(text: "Back", destination: 0),
 Choice(text: "Next", destination: 2)
 ],
 characters: [
     "st1": .love,
 ]
 ),
 StoryPage( // 2
 """
 Oh wow! Treasure!",
 
 said {st2name}.
 """,
 choices: [
 Choice(text: "Next", destination: 3)
 ],
 characters: [
     "st2": .happy
 ]
 ),
 StoryPage( // 3
 """
 {st2name} like the things {st1name} found and wanted to find some too.
 """,
 choices: [
 Choice(text: "Next", destination: 4)
 ],
 characters: [
     "st1": .neutral,
 ]
 ),
 StoryPage( // 4
 """
 That was fine with {st1name}.
 "Time to go treasure hunting!"
 
 Off {st1name} and {st2name} went with their backpacks and a chest full of excitement.
 """,
 choices: [
 Choice(text: "Next", destination: 5)
 ],
 characters: [
     "st1": .happy,
     "st2": .happy
 ]
 ),
 StoryPage( // 5
 """
 Between the bushes {st2name} found a crown and a magic wand.
 """,
 choices: [
 Choice(text: "Next", destination: 6)
 ],
 characters: [
     "st2": .love
 ]
 ),
 StoryPage( // 6
 """
 Under an old log {st1name} found bugs and creepy creatures.
 
 No thank you!
 """,
 choices: [
 Choice(text: "Next", destination: 7)
 ],
 characters: [
     "st1": .angry,
 ]
 ),
 StoryPage( // 7
 """
 Among the flowers {st1name} found a chest and a ring.
 """,
 choices: [
 Choice(text: "Next", destination: 8)
 ],
 characters: [
     "st1": .happy,
 ]
 ),
 StoryPage( // 8
 """
 In the stream {st2name} found a message in a bottle and a wise old wizard.
 """,
 choices: [
 Choice(text: "Next", destination: 9)
 ],
 characters: [
     "st2": .happy
 ]
 ),
 StoryPage( // 9
 """
 By the lamp post {st1name} found a sports car and a victory trophy. Time to show each other all the treasures they had found!
 """,
 choices: [
 Choice(text: "Next", destination: 10)
 ],
 characters: [
     "st1": .happy,
 ]
 ),
 StoryPage( // 10
 """
  {st2name} was crying.
 "I lost my ring," said {st2name}.
 "I don't know where I dropped it."
 """,
 choices: [
 Choice(text: "Next", destination: 11)
 ],
 characters: [
     "st2": .sad
 ]
 ),
 StoryPage( // 11
 """
 That sounded like something {st1name} had found.
 
 It was! It was {st2name}'s ring!
 """,
 choices: [
 Choice(text: "Next", destination: 12)
 ],
 characters: [
     "st1": .happy,
     "st2": .love
 ]
 ),
 StoryPage( // 12
 """
 "Thank you, {st1name}! You DO find treasures!"
 """,
 choices: [
 
 ],
 characters: [
     "st2": .love
 ]
 ),
 ],characters: scharactersDictionary
)
 
