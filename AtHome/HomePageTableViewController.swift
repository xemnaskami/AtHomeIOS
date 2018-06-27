//
//  HomePageTableViewController.swift
//  AtHome
//
//  Created by pyre on 27/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import UIKit

class HomePageTableViewController: UITableViewController {
    // MARK: - Table view data source
    
    var Modules : [String] = [
    "Hydrometer",
    "Thermometer",
    "Kilometer"
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Modules.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Modules"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = Modules[indexPath.row]
        
        return cell
    }
    
}
