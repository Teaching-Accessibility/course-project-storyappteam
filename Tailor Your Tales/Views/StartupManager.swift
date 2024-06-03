//
//  StartupManager.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/3/24.
//

import Foundation
class StartupManager {
    init (){
        DataLoad()
    }
    
    func DataLoad () {
        let characters = CoreDataManager.shared.fetchAllCharacters()
        if (characters.isEmpty) {
            let st2 = Character(name: "Dara", gender: .female, image: .bella)
            CoreDataManager.shared.saveCharacter(st2, withKey: "st2")
            let st1 = Character(name: "Sam", gender: .male, image: .joe)
            CoreDataManager.shared.saveCharacter(st1, withKey: "st1")
            print("here")
            
        }
        
       
    }
}
