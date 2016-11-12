//
//  CarePlanStoreManager.swift
//  HemoLeo
//
//  Created by Luisa Mello on 7/12/16.
//  Copyright © 2016 Bepid. All rights reserved.
//

//import CareKit
//
//class CarePlanStoreManager: NSObject {
//
//    // MARK: - Static properties
//    static var sharedCarePlanStoreManager = CarePlanStoreManager()
//    
//    // MARK: - Properties
//    weak var delegate: CarePlanStoreManagerDelegate?
//    
//    var insights: [OCKInsightItem] {
//        return insightsBuilder.insights
//    }
//    
//    private let insightsBuilder: InsightsBuilder
//    
//    let store: OCKCarePlanStore
//    
//    // MARK: - Initialization
//    private override init() {
//        // Set the file URL fore CareKit's store
//        let applicationSupportPath = NSSearchPathForDirectoriesInDomains(.ApplicationSupportDirectory, .UserDomainMask, true).first
//        let persistenceDirectoryURL = NSURL(fileURLWithPath: applicationSupportPath!)
//        
//        if !NSFileManager.defaultManager().fileExistsAtPath(persistenceDirectoryURL.absoluteString, isDirectory: nil) {
//            try! NSFileManager.defaultManager().createDirectoryAtURL(persistenceDirectoryURL, withIntermediateDirectories: true, attributes: nil)
//        }
//        
//        // Create the store
//        store = OCKCarePlanStore(persistenceDirectoryURL: persistenceDirectoryURL)
//        
//        insightsBuilder = InsightsBuilder(carePlanStore: store)
//        
//        super.init()
//        
//        // Register this object as the store's delegate to be notified of any changes.
//        store.delegate = self
//        
//        updateInsights()
//    }
//    
//    func updateInsights() {
//        insightsBuilder.updateInsights { [weak self] completed, newInsights in
//            // If new insights have been created, notifiy the delegate.
//            guard let storeManager = self, newInsights = newInsights where completed else { return }
//            storeManager.delegate?.carePlanStoreManager(storeManager, didUpdateInsights: newInsights)
//        }
//    }
//}
//
//extension CarePlanStoreManager: OCKCarePlanStoreDelegate {
//    func carePlanStoreActivityListDidChange(store: OCKCarePlanStore) {
//        updateInsights()
//    }
//    
//    func carePlanStore(store: OCKCarePlanStore, didReceiveUpdateOfEvent event: OCKCarePlanEvent) {
//        updateInsights()
//    }
//}
//
//protocol CarePlanStoreManagerDelegate: class {
//    func carePlanStoreManager(manager: CarePlanStoreManager, didUpdateInsights insights: [OCKInsightItem])
//}
//

import CareKit

class CarePlanStoreManager: NSObject {
    // MARK: Static Properties
    
    static var sharedCarePlanStoreManager = CarePlanStoreManager()
    
    // MARK: Properties
    
    weak var delegate: CarePlanStoreManagerDelegate?
    
    var store: OCKCarePlanStore
    
    var insights: [OCKInsightItem] {
        return insightsBuilder.insights
    }
    
    private let insightsBuilder: InsightsBuilder
    
    // MARK: Initialization
    
    private override init(/*path: String*/) {
        // Determine the file URL for the store.
        let searchPaths = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let applicationSupportPath = searchPaths[0]/*)/\(path)"*/
        print(applicationSupportPath)
        let persistenceDirectoryURL = NSURL(fileURLWithPath: applicationSupportPath)
        
        if !FileManager.default.fileExists(atPath: persistenceDirectoryURL.absoluteString!, isDirectory: nil) {
            try! FileManager.default.createDirectory(at: persistenceDirectoryURL as URL, withIntermediateDirectories: true, attributes: nil)
        }
        
        // Create the store.
        
        store = OCKCarePlanStore(persistenceDirectoryURL: persistenceDirectoryURL as URL)
        
        /*
         Create an `InsightsBuilder` to build insights based on the data in
         the store.
         */
        insightsBuilder = InsightsBuilder(carePlanStore: store)
        
        super.init()
        
        // Register this object as the store's delegate to be notified of changes.
        store.delegate = self
        
        // Start to build the initial array of insights.
        updateInsights()
    }
    
    
    func updateInsights() {
        insightsBuilder.updateInsights { [weak self] completed, newInsights in
            // If new insights have been created, notifiy the delegate.
            guard let storeManager = self, let newInsights = newInsights , completed else { return }
            storeManager.delegate?.carePlanStoreManager(manager: storeManager, didUpdateInsights: newInsights)
        }
    }
}



extension CarePlanStoreManager: OCKCarePlanStoreDelegate {
    func carePlanStoreActivityListDidChange(_ store: OCKCarePlanStore) {
        updateInsights()
    }
    
    func carePlanStore(_ store: OCKCarePlanStore, didReceiveUpdateOf event: OCKCarePlanEvent) {
        updateInsights()
    }
}



protocol CarePlanStoreManagerDelegate: class {
    
    func carePlanStoreManager(manager: CarePlanStoreManager, didUpdateInsights insights: [OCKInsightItem])
    
}
