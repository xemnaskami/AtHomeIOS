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


public func getDictIconHomePage(moduleType : String) -> Icon {
    var dictIcon = [
        "hygrometer" : Icon(color: UIColor.blue, icon: .tint),
        "luxmeter" : Icon(color: UIColor.yellow, icon: .lightbulbO),
        "thermometer" : Icon(color: UIColor.red, icon: .thermometerHalf),
        "athmospherics" : Icon(color: UIColor.gray, icon: .cloud)
    ]
    if dictIcon[moduleType] != nil {
        return dictIcon[moduleType]!
    }
    return Icon(color: UIColor.black, icon: .question)
}
    
    
