//
//  Character.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import Foundation
import SwiftUI

enum Gender: String, CaseIterable, Identifiable {
    case male = "Male"
    case female = "Female"
    case nonbinary = "Nonbinary"
    
    var id: String {self.rawValue}
}

enum CharacterImage: String, CaseIterable, Identifiable {
    case alia = "alia"
    case bella = "bella"
    case christine = "christine"
    case derrick = "derrick"
    case joe = "joe"
    case matt = "matt"
    case megan = "megan"
    case nina = "nina"
    case rohit = "rohit"
    case sarah = "sarah"
    
    var id: String {self.rawValue}
}

struct Character {
    var name: String
    var gender: Gender
    var nameColor: Color
    var image: CharacterImage?
}
