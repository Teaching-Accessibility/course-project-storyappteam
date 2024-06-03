//
//  Story+CoreDataProperties.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/2/24.
//
//

import Foundation
import CoreData


extension Story {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Story> {
        return NSFetchRequest<Story>(entityName: "Story")
    }

    @NSManaged public var id: Int64
    @NSManaged public var title: String?
    @NSManaged public var characters: NSOrderedSet?

}

// MARK: Generated accessors for characters
extension Story {

    @objc(insertObject:inCharactersAtIndex:)
    @NSManaged public func insertIntoCharacters(_ value: Character, at idx: Int)

    @objc(removeObjectFromCharactersAtIndex:)
    @NSManaged public func removeFromCharacters(at idx: Int)

    @objc(insertCharacters:atIndexes:)
    @NSManaged public func insertIntoCharacters(_ values: [Character], at indexes: NSIndexSet)

    @objc(removeCharactersAtIndexes:)
    @NSManaged public func removeFromCharacters(at indexes: NSIndexSet)

    @objc(replaceObjectInCharactersAtIndex:withObject:)
    @NSManaged public func replaceCharacters(at idx: Int, with value: Character)

    @objc(replaceCharactersAtIndexes:withCharacters:)
    @NSManaged public func replaceCharacters(at indexes: NSIndexSet, with values: [Character])

    @objc(addCharactersObject:)
    @NSManaged public func addToCharacters(_ value: Character)

    @objc(removeCharactersObject:)
    @NSManaged public func removeFromCharacters(_ value: Character)

    @objc(addCharacters:)
    @NSManaged public func addToCharacters(_ values: NSOrderedSet)

    @objc(removeCharacters:)
    @NSManaged public func removeFromCharacters(_ values: NSOrderedSet)

}

extension Story : Identifiable {

}
