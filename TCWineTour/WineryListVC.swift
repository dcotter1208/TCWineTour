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
    @IBOutlet weak var wineryListBackgroundImage: UIImageView!
    @IBOutlet weak var wineryListTableView: UITableView!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    var winery = Winery?()

    override func viewDidLoad() {
        super.viewDidLoad()
        wineryListTableView.reloadData()
        wineryListBackgroundImage.image = UIImage(named: "grapes")

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        wineryListTableView.reloadData()
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
//            cell.imageView?.image = UIImage(named: cellIamge)
            
            return cell
        }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        selectedIndex = indexPath.row
//    }
//    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "wineryListDetail" {
            let wineryDetailVC = segue.destinationViewController as! WineryDetailVC
            
            let selectedIndex = wineryListTableView.indexPathForCell(sender as! UITableViewCell)
            
            wineryDetailVC.winery = wineries[(selectedIndex?.row)!]
            
        }
    }

    @IBAction func unwindWineryDetailPageSegue(segue: UIStoryboardSegue) {
        wineryListTableView.reloadData()
    
    }
    
}