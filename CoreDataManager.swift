import Foundation
import CoreData
import Combine

class CoreDataManager {
    static let shared = CoreDataManager()
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    let persistentContainer: NSPersistentContainer
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "CoreData")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        }
    }
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func saveCharacter(_ character: Character, withKey key: String) {
        let context = persistentContainer.viewContext
        
        // Fetch existing entity with the same key
        if fetchCharacter(withKey: key) != nil {
            // Update existing entity
            updateCharacter(character, withKey: key)
        } else {
            // Create new entity if it doesn't exist
            let characterEntity = CharacterEntity(context: context)
            do {
                let data = try JSONEncoder().encode(character)
                characterEntity.data = data
                characterEntity.key = key
                print("Saved " + key + " as " + character.name)
                saveContext()
            } catch {
                print("Failed to encode character: (error)")
            }
        }
    }
    
    func fetchCharacter(withKey key: String) -> Character? {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<CharacterEntity> = CharacterEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "key == %@", key)
        
        do {
            if let characterEntity = try context.fetch(fetchRequest).first,
               let data = characterEntity.data {
                return try JSONDecoder().decode(Character.self, from: data)
            }
        } catch {
            print("Failed to fetch character: \(error)")
        }
        return nil
    }
    
    func updateCharacter(_ character: Character, withKey key: String) {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<CharacterEntity> = CharacterEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "key == %@", key)
        
        do {
            if let characterEntity = try context.fetch(fetchRequest).first {
                characterEntity.data = try JSONEncoder().encode(character)
                saveContext()
            }
        } catch {
            print("Failed to update character: \(error)")
        }
    }
    
    func deleteCharacter(withKey key: String) {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<CharacterEntity> = CharacterEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "key == %@", key)
        
        do {
            if let characterEntity = try context.fetch(fetchRequest).first {
                context.delete(characterEntity)
                saveContext()
            }
        } catch {
            print("Failed to delete character: \(error)")
        }
    }
    
    func deleteStoryCharacters(characters: [String: Character]) {
        for key in characters.keys {
            if fetchCharacter(withKey: key) != nil {
                print("deleted " + key)
                deleteCharacter(withKey: key)
            }
        }
    }
    
    func clearAllCharacterEntities() {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = CharacterEntity.fetchRequest()
        
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            try context.execute(batchDeleteRequest)
            try context.save()
        } catch {
            print("Error clearing CharacterEntity entities: (error)")
        }
    }
    
    // Use this
    func mergeWithCoreData(defaultCharacters: [String: Character]) -> [String: Character] {
        var mergedCharacters = defaultCharacters
        for key in defaultCharacters.keys {
            if let coreDataCharacter = fetchCharacter(withKey: key) {
                print("found " + key + " as " + coreDataCharacter.name + " with image " + (coreDataCharacter.image?.rawValue ?? ""))
                mergedCharacters[key] = coreDataCharacter
            }
        }
        return mergedCharacters
    }
    
    func setupChangeTracking() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(contextDidChange(notification:)),
                                               name: NSNotification.Name.NSManagedObjectContextObjectsDidChange,
                                               object: persistentContainer.viewContext)
    }
    
    @objc func contextDidChange(notification: Notification) {
        objectWillChange.send()
    }
    
    func decodeCharacter(from data: Data?) -> Character? {
        guard let data = data else { return nil }
        do {
            return try JSONDecoder().decode(Character.self, from: data)
        } catch {
            print("Failed to decode character: (error)")
            return nil
        }
    }
}
