//
//  CarePlanStoreManager.swift
//  HemoLeo
//
//  Created by Luisa Mello on 7/12/16.
//  Copyright © 2016 Bepid. All rights reserved.
//

import CareKit

class CarePlanStoreManager: NSObject {

    // MARK: - Static properties
    static var sharedCarePlanStoreManager = CarePlanStoreManager()
    
    // MARK: - Properties
    weak var delegate: CarePlanStoreManagerDelegate?
    
    var insights: [OCKInsightItem] {
        return insightsBuilder.insights
    }
    
    private let insightsBuilder: InsightsBuilder
    
    let store: OCKCarePlanStore
    
    // MARK: - Initialization
    private override init() {
        // Set the file URL fore CareKit's store
        let applicationSupportPath = NSSearchPathForDirectoriesInDomains(.ApplicationSupportDirectory, .UserDomainMask, true).first
        let persistenceDirectoryURL = NSURL(fileURLWithPath: applicationSupportPath!)
        
        if !NSFileManager.defaultManager().fileExistsAtPath(persistenceDirectoryURL.absoluteString, isDirectory: nil) {
            try! NSFileManager.defaultManager().createDirectoryAtURL(persistenceDirectoryURL, withIntermediateDirectories: true, attributes: nil)
        }
        
        // Create the store
        store = OCKCarePlanStore(persistenceDirectoryURL: persistenceDirectoryURL)
        
        insightsBuilder = InsightsBuilder(carePlanStore: store)
        
        super.init()
        
        // Register this object as the store's delegate to be notified of any changes.
        store.delegate = self
        
        updateInsights()
    }
    
    func updateInsights() {
        insightsBuilder.updateInsights { [weak self] completed, newInsights in
            // If new insights have been created, notifiy the delegate.
            guard let storeManager = self, newInsights = newInsights where completed else { return }
            storeManager.delegate?.carePlanStoreManager(storeManager, didUpdateInsights: newInsights)
        }
    }
}

extension CarePlanStoreManager: OCKCarePlanStoreDelegate {
    func carePlanStoreActivityListDidChange(store: OCKCarePlanStore) {
        updateInsights()
    }
    
    func carePlanStore(store: OCKCarePlanStore, didReceiveUpdateOfEvent event: OCKCarePlanEvent) {
        updateInsights()
    }
}

protocol CarePlanStoreManagerDelegate: class {
    func carePlanStoreManager(manager: CarePlanStoreManager, didUpdateInsights insights: [OCKInsightItem])
}

