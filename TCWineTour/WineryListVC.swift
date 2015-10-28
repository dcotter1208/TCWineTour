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

    var wineryList = [chateauChantal, twoLads]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let wineryCell = "wineryCell"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wineryList.count
    }

//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCellWithIdentifier(wineryCell) as! UITableViewCell
//        
//        if (cell == nil) {
//            cell = UITableViewCell(
//                style: UITableViewCellStyle.Default, reuseIdentifier: wineryCell
//            )
//            cell!.textLabel.text = wineryList[indexPath.row]
//            return cell!
//        }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("wineryCell", forIndexPath: indexPath)
            
            cell.textLabel?.text = wineryList[indexPath.row].mapTitle
            
            return cell
            
        }
    }
  


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


