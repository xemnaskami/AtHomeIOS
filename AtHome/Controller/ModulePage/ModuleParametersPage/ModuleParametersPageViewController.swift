//
//  ModuleParametersPageViewController.swift
//  AtHome
//
//  Created by pyre on 03/07/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import UIKit
import Eureka

class ModuleParametersPageViewController: FormViewController {

    var module : Module = Module(id: -1, name: "", location: "", type: "", samples: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(self.module)
        // Do any additional setup after loading the view.
        form +++
            Section("Module")
            <<< TextRow(){ row in
                row.title = "Name"
                row.placeholder = "Enter name here"
                row.value = self.module.name
            }
            <<< TextRow(){
                $0.title = "Location"
                $0.placeholder = "Enter location here"
                $0.value = module.location
            }
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
