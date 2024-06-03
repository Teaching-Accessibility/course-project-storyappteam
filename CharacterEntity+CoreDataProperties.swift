//
//  CharacterEntity+CoreDataProperties.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/3/24.
//
//

import Foundation
import CoreData


extension CharacterEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CharacterEntity> {
        return NSFetchRequest<CharacterEntity>(entityName: "CharacterEntity")
    }

    @NSManaged public var data: Data?
    @NSManaged public var key: String?

}

extension CharacterEntity : Identifiable {

}
