//
//  ModulePageController.swift
//  AtHome
//
//  Created by pyre on 28/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import UIKit

class ModulePageViewController : UIViewController {
    
    @IBOutlet var labelType: UILabel!
    @IBOutlet var labelLocation: UILabel!
    
    var module : Module = Module(id: -1, name: "", location: "", type: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = module.name
        self.labelType.text = module.type
        self.labelLocation.text = module.location
        print(module)
    }
}
