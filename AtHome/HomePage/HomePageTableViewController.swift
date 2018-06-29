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
    
    var modules : [ModulesSection]! = []
    
    var ModulesSections : [(String, [String])]! = [
        ("Modules En Danger", [
            "Hydro",
            "Thermo"
        ]),
        ("Modules Sains", [
            "Hydrometer",
            "Thermometer",
            "Kilometer"
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "AtHome"
        self.getModules()
    }
    
    
    
    //MARK: Table View Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return modules.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modules[section].modules.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return modules[section].state
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! HomePageTableViewCellController
        
        cell.setModule(module: modules[indexPath.section].modules[indexPath.row])
        //cell.module = modules[indexPath.section].modules[indexPath.row]
        cell.textLabel?.text = cell.getModule().location
        cell.detailTextLabel?.text = cell.getModule().type
        let icon = getDictIconModuleType(moduleType: cell.getModule().type)
        cell.imageView?.image = UIImage.fontAwesomeIcon(name: icon.icon, textColor: icon.color, size: CGSize(width: 50, height: 50))
        return cell
    }
    
    @IBOutlet var HomePageTableView: UITableView!
    
    
    //MARK: Private Methods
    
    /*
     * Get modules from API using ApolloController and store modules in modules var
     */
    private func getModules() {
        let apolloController = ApolloController()
        apolloController.getAllModules(){ (modules) -> () in
            self.modules = [ModulesSection(state: "Modules", modules: modules)]
            self.reloadHomePageTableView()
        }
    }
    
    /*
     * Reload Home Page Table View using ModulesSection Values
     */
    private func reloadHomePageTableView() {
        self.HomePageTableView.reloadData()
        self.refreshControl?.endRefreshing()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ModulePageViewController {
            if sender is HomePageTableViewCellController {
                let cell : HomePageTableViewCellController = sender as! HomePageTableViewCellController
                let vc = segue.destination as? ModulePageViewController
                vc?.module = cell.getModule()
            }
        }
    }
    
}
