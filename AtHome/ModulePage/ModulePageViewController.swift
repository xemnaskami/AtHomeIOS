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
    @IBOutlet var labelLocationIcon: UILabel!
    @IBOutlet var labelModuleIcon: UILabel!
    
    var module : Module = Module(id: -1, name: "", location: "", type: "", samples: nil)
    
    @IBAction func GetModuleByIDTest(_ sender: Any) {
        let apolloController = ApolloController()
        
        apolloController.getModuleById(moduleId: self.module.id) { (module) -> () in
            print(module ?? "No module founded")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = module.name.capitalized
        
        self.labelType.text = module.type.capitalized
        self.labelLocation.text = module.location.capitalized
        
        let locationIcon = getLocationIcon()
        self.labelLocationIcon.font = UIFont.fontAwesome(ofSize: 30)
        self.labelLocationIcon.text = String.fontAwesomeIcon(name: locationIcon.icon)
        self.labelLocationIcon.textColor = locationIcon.color
        
        let imageIcon = getDictIconModuleType(moduleType: self.module.type)
        self.labelModuleIcon.font = UIFont.fontAwesome(ofSize: 150)
        self.labelModuleIcon.text = String.fontAwesomeIcon(name: imageIcon.icon)
        self.labelModuleIcon.textColor = imageIcon.color
    }
}
