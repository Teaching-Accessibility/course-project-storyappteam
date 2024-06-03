import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager()
    
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
        let characterEntity = CharacterEntity(context: context)
        
        do {
            let data = try JSONEncoder().encode(character)
            characterEntity.data = data
            characterEntity.key = key
            saveContext()
        } catch {
            print("Failed to encode character: \(error)")
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
    
//    func fetchAllCharacters() -> [Character] {
//        let context = persistentContainer.viewContext
//        let fetchRequest: NSFetchRequest<CharacterEntity> = CharacterEntity.fetchRequest()
//        
//        do {
//            let characterEntities = try context.fetch(fetchRequest)
//            return characterEntities.compactMap { entity in
//                guard let data = entity.data else { return nil }
//                return try? JSONDecoder().decode(Character.self, from: data)
//            }
//        } catch {
//            print("Failed to fetch characters: \(error)")
//            return []
//        }
//    }
    
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
                print("found " + key + " as " + coreDataCharacter.name)
                mergedCharacters[key] = coreDataCharacter
            }
        }
        return mergedCharacters
    }
    
}
