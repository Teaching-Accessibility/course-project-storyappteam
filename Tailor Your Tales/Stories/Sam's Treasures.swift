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

var st1 = CoreDataManager.shared.fetchCharacter(withKey: "st1")
var st2 = CoreDataManager.shared.fetchCharacter(withKey: "st2")
//var st2 = Character(name: "Dara", gender: .female, image: .bella)
 //st1 = Character(name: "Sam", gender: .male, image: .joe)



var scharactersDictionary: [String: Character] = [
    "character1": st1!,
    "character2": st2!,
]

 let samstreasures = Story(
 id: 1,
 title: "Treasures",
 previewImage: Image(systemName: "figure.walk"),
 pages: [
 StoryPage( // 0
 """
         {character1name} and {character2name} were at the park. A shiny sparkle caught {character1name}'s eye.
 """,
 choices: [
 Choice(text: "Next", destination: 1)
 ],
 characters: [
     "character1": .happy,
     "character2": .happy
 ]
 ),
 StoryPage( // 1
 """
 A crystal ball! A magic pearl! A treasure for {character1name}'s collection!
 """,
 choices: [
 Choice(text: "Next", destination: 2)
 ],
 characters: [
     "character1": .love,
 ]
 ),
 StoryPage( // 2
 """
 Oh wow! Treasure!",
 
 said {character2name}.
 """,
 choices: [
 Choice(text: "Next", destination: 3)
 ],
 characters: [
     "character2": .happy
 ]
 ),
 StoryPage( // 3
 """
 {character2name} like the things {character1name} found and wanted to find some too.
 """,
 choices: [
 Choice(text: "Next", destination: 4)
 ],
 characters: [
     "character1": .neutral,
 ]
 ),
 StoryPage( // 4
 """
 That was fine with {character1name}.
 "Time to go treasure hunting!"
 
 Off {character1name} and {character2name} went with their backpacks and a chest full of excitement.
 """,
 choices: [
 Choice(text: "Next", destination: 5)
 ],
 characters: [
     "character1": .happy,
     "character2": .happy
 ]
 ),
 StoryPage( // 5
 """
 Between the bushes {character2name} found a crown and a magic wand.
 """,
 choices: [
 Choice(text: "Next", destination: 6)
 ],
 characters: [
     "character2": .love
 ]
 ),
 StoryPage( // 6
 """
 Under an old log {character1name} found bugs and creepy creatures.
 
 No thank you!
 """,
 choices: [
 Choice(text: "Next", destination: 7)
 ],
 characters: [
     "character1": .angry,
 ]
 ),
 StoryPage( // 7
 """
 Among the flowers {character1name} found a chest and a ring.
 """,
 choices: [
 Choice(text: "Next", destination: 8)
 ],
 characters: [
     "character1": .happy,
 ]
 ),
 StoryPage( // 8
 """
 In the stream {character2name} found a message in a bottle and a wise old wizard.
 """,
 choices: [
 Choice(text: "Next", destination: 9)
 ],
 characters: [
     "character2": .happy
 ]
 ),
 StoryPage( // 9
 """
 By the lamp post {character1name} found a sports car and a victory trophy. Time to show each other all the treasures they had found!
 """,
 choices: [
 Choice(text: "Next", destination: 10)
 ],
 characters: [
     "character1": .happy,
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
 ],
 characters: [
     "character2": .sad
 ]
 ),
 StoryPage( // 11
 """
 That sounded like something {character1name} had found.
 
 It was! It was {character2name}'s ring!
 """,
 choices: [
 Choice(text: "Next", destination: 12)
 ],
 characters: [
     "character1": .happy,
     "character2": .love
 ]
 ),
 StoryPage( // 12
 """
 "Thank you, {character1name}! You DO find treasures!"
 """,
 choices: [
 
 ],
 characters: [
     "character2": .love
 ]
 ),
 ],characters: scharactersDictionary
)
 
