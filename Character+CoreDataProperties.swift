//
//  Character+CoreDataProperties.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/2/24.
//
//

import Foundation
import CoreData


extension Character {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Character> {
        return NSFetchRequest<Character>(entityName: "Character")
    }

    @NSManaged public var name: String?
    @NSManaged public var image: String?
    @NSManaged public var gender: String?
    @NSManaged public var id: String?
    @NSManaged public var story: Story?

}

extension Character : Identifiable {

}
