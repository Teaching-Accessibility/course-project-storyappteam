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

enum HairType: String, CaseIterable, Identifiable {
    case straight = "Straight"
    case wavy = "Wavy"
    case curly = "Curly"
    
    var id: String {self.rawValue}
}

enum HairLength: String, CaseIterable, Identifiable {
    case short = "Short"
    case long = "Long"
    case none = "None"
    
    var id: String {self.rawValue}
}

struct Character {
    var name: String
    var gender: Gender
    var nameColor: Color
    /*
    var skinColor: Color
    var eyeColor: Color
    var hairColor: Color
    var hairType: HairType
    var hairLength: HairLength
    var heightInCentimeters: Int*/
 
}
