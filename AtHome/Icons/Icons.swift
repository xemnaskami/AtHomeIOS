//
//  Icons.swift
//  AtHome
//
//  Created by pyre on 28/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import UIKit
import FontAwesome

public struct Icon {
    var color : UIColor
    var icon : FontAwesome
}

public func getLocationIcon() -> Icon {
    return Icon(
        color: UIColor(red: (160/255.0), green: (168/255.0), blue: (180/255.0), alpha: 1.0),
        icon: .mapMarker
    )
}

public func getDictIconModuleType(moduleType : String) -> Icon {
    var dictIcon = [
        "hygrometer" : Icon(
            color: UIColor(red: (78/255.0), green: (149/255.0), blue: (224/255.0), alpha: 1.0),
            icon: FontAwesome.tint),
        "luxmeter" : Icon(
            color: UIColor(red: (252/255.0), green: (196/255.0), blue: (96/255.0), alpha: 1.0),
            icon: FontAwesome.lightbulbO),
        "thermometer" : Icon(
            color: UIColor(red: (229/255.0), green: (77/255.0), blue: (94/255.0), alpha: 1.0),
            icon: .thermometerHalf),
        "athmospherics" : Icon(
            color: UIColor(red: (196/255.0), green: (202/255.0), blue: (211/255.0), alpha: 1.0),
            icon: .cloud)
    ]
    
    if dictIcon[moduleType] != nil {
        return dictIcon[moduleType]!
    }
    return Icon(color: UIColor.black, icon: .question)
}
    
    
