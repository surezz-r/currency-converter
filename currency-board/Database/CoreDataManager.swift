//
//  CoreDataManager.swift
//  currency-board
//

import CoreData

private let ModelName = "currency_board"
private let PersistentStoreName = "currency_board.sqlite"

typealias coreDataUpdateCompletion = (_ success: Bool) -> Void

class CoreDataManager {
    //MARK:- Call Back
    var contextDidSave: coreDataUpdateCompletion?
    
    //MARK:- Singleton
    static let sharedInstance = CoreDataManager()
    
    //MARK:- Initialization
    init() {
        self.mainContext =  NSManagedObjectContext(
            concurrencyType: .mainQueueConcurrencyType)
        self.mainContext.persistentStoreCoordinator = self.persistentStoreCoordinator
        
        NotificationCenter.default.addObserver(self, selector: #selector(mergeSecondaryContext(notification:)), name: Notification.Name.NSManagedObjectContextDidSave, object: nil)
    }
    
    //MARK: Main Context
    var mainContext: NSManagedObjectContext!
    
    //MARK: - Creates a New Secondary Context Everytime accessed
    var secondaryContext: NSManagedObjectContext {
        let context: NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .privateQueueConcurrencyType)
        context.persistentStoreCoordinator = persistentStoreCoordinator
        
        return context
    }
    
    //MARK: Application's Documents Directory
    lazy var applicationDocumentsDirectory: URL = {
        let urls = FileManager.default.urls(
            for: .documentDirectory, in: .userDomainMask)
        return urls[urls.count-1]
    }()
    
    //MARK: Persistent Store Path
    var persistentStorePath: URL {
        let path = applicationDocumentsDirectory.appendingPathComponent(PersistentStoreName)
        return path
    }
    
    //MARK: Managed Object Model
    lazy var managedObjectModel: NSManagedObjectModel = {
        let modelURL = Bundle.main
            .url(forResource: ModelName,
                 withExtension: "momd")!
        return NSManagedObjectModel(contentsOf: modelURL)!
    }()
    
    //MARK: Persistent Store Coordinator
    var persistentStoreCoordinator: NSPersistentStoreCoordinator {
        get {
            let coordinator = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
            do {
                try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: persistentStorePath, options:nil)
            } catch let error as NSError {
                //TODO:: Add Debug print in debug scheme
                print("Error: \(error.localizedDescription)")
            }
            
            return coordinator
        }
    }
    
    // MARK: - Core Data Saving support
    func saveContext () {
        if self.mainContext.hasChanges {
            do {
                try self.mainContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                //TODO:: Add Debug print in debug scheme
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func saveSecondaryContext(context: NSManagedObjectContext, completion: @escaping coreDataUpdateCompletion) {
        self.contextDidSave = completion
        context.perform {
            do {
                try context.save()
            } catch let error as NSError{
                //TODO:: Add Debug print in debug scheme
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
    
    @objc func mergeSecondaryContext(notification: Notification) {
        if Thread.isMainThread {
            self.mainContext.mergeChanges(fromContextDidSave: notification)
            if let _ = self.contextDidSave {
                self.contextDidSave!(true)
            }
        } else {
            DispatchQueue.main.async { [weak self] in
                if let strongSelf = self {
                    strongSelf.mergeSecondaryContext(notification: notification)
                }
            }
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name.NSManagedObjectContextDidSave, object: nil)
    }
}
