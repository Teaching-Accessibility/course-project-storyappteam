//
//  CharacterEntity+CoreDataProperties.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 6/3/24.
//
//

import Foundation
import CoreData


extension CDCharacterEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDCharacterEntity> {
        return NSFetchRequest<CDCharacterEntity>(entityName: "CharacterEntity")
    }

    @NSManaged public var key: String?
    @NSManaged public var data: Data?

}

extension CDCharacterEntity : Identifiable {

}
