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
    var samples : [Sample]?
    
}

struct Sample {
    var payload : Payload
    var date : String
}

struct Payload {
    var unitMeasure : String
    var name : String
    var measure : String
}
