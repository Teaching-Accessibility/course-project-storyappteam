//
//  DataManager.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 5/20/24.
//  Beginning Code comes from Apple Tutorial, Setting Up Core Data Stack: https://developer.apple.com/documentation/coredata/setting_up_a_core_data_stack

import Foundation
import CoreData
//Set up DataManager as a singleton (single instance of DataManager will be created)
//DataManager class used to make all changes/operations to Core Data
class DataManager {
    static let shared = DataManager() // Use this instance of DataManager to make changes to core data
    
    // Create a persistent container as a lazy variable to defer instantiation until its first use.
    // persistant container sets up the model, context, and store coordinator, see https://developer.apple.com/documentation/coredata/setting_up_a_core_data_stack for explanation
      lazy var persistentContainer: NSPersistentContainer = {
          
          // Pass the data model filename to the container’s initializer.
          let container = NSPersistentContainer(name: "LocalData")
          
          // Load any persistent stores, which creates a store if none exists.
          container.loadPersistentStores { _, error in
              if let error {
                  // Handle the error
                  fatalError("Failed to load persistent stores: \(error.localizedDescription)")
              }
          }
          return container
      }()
          
      private init() { }
}
