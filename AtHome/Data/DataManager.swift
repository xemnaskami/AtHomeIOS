//
//  DataManager.swift
//  AtHome
//
//  Created by pyre on 29/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import Foundation
import UIKit
import CoreData

public class DataManager {
    func getModules() -> [Module]? {
        return nil
    }
    
    func saveModules(modules : [Module]) {
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "ModuleStored",
                                                in: managedContext)!
        
        let module = NSManagedObject(entity: entity, insertInto: managedContext)
        
        
    }
}
