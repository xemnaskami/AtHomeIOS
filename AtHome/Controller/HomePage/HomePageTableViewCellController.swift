//
//  HomePageTableViewCellController.swift
//  AtHome
//
//  Created by pyre on 28/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import UIKit
import FontAwesome

class HomePageTableViewCellController : UITableViewCell {
    private var module : Module = Module(id: -1, name: "", location: "", type: "", samples: nil)
    
    public func setModule(module: Module) {
        self.module = module
        
        //self.labelLocation.text = self.module.location
        //self.labelType.text = self.module.type
        //self.labelIcon.text = self.module.name
        /*let icon = getDictIconModuleType(moduleType: self.module.type)
        self.labelIcon.font = UIFont.fontAwesome(ofSize: 20)
        self.labelIcon.text = String.fontAwesomeIcon(name: icon.icon)
        self.labelIcon.textColor = icon.color*/
    }
    
    public func getModule() -> Module {
        return self.module
    }
}
