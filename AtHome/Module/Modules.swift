//
//  Module.swift
//  AtHome
//
//  Created by pyre on 28/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import Foundation

struct ModulesSection {
    var state : String
    var modules : [Module]
}

struct Module {
    var id : Int
    var name: String
    var location : String
    var type : String
}
/*
class Module {
    private var id : Int
    private var name : String
    private var location : String
    private var type : String
    
    public init(id: Int, name: String, location: String, type: String) {
        self.id = id
        self.name = name
        self.location = location
        self.type = type
    }
    
    public func setId(id: Int) {
        self.id = id
    }
    
    public func getId() -> Int {
        return self.id
    }
    
    public func setName(name: String) {
        self.name = name
    }
    
    public func getName() -> String {
        return self.name
    }
    
    public func setLocation(location: String) {
        self.location = location
    }
    
    public func getLocation() -> String {
        return self.location
    }
    
    public func setType(type: String) {
        self.type = type
    }
    
    public func getType() -> String {
        return self.type
    }
}
 */
