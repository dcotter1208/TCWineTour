//
//  WineryListVC.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/28/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class WineryListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var winerListTableView: UITableView!

    var selectedIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    let wineryCell = "wineryCell"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineries.count
    }


        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("wineryCell", forIndexPath: indexPath)
            
            cell.textLabel?.text = wineries[indexPath.row].name
        
            return cell
        }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "wineryListDetail" {
            let wineryDetailVC = segue.destinationViewController as! WineryDetailVC
            wineryDetailVC.winery = wineries[selectedIndex]
            
        }
    }

    
    
}