//
//  TableViewController.swift
//  multiTableView3
//
//  Created by Pawel on 05.09.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var views = [String]()
    
    override func viewDidLoad() {
        
        views = ["1", "2", "3"]
        
       // for i in 0..<views.count
        
        names = ["Go to \(views[0])", "Go to \(views[1])", "Go to \(views[2])"]
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MultiCell")
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let newView = views[indexPath.row]
        let newViewController = storyboard?.instantiateViewControllerWithIdentifier(newView)
        self.navigationController?.pushViewController(newViewController!, animated: true)
        
        
    }
}
