//
//  WineryDetailVC.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/28/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class WineryDetailVC: UIViewController {
    
    @IBOutlet weak var wineryNameLabel: UILabel!
    @IBOutlet weak var wineryDescriptionTextView: UITextView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var phoneNumberlabel: UILabel!
    
    var winery = Winery?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWineryDescription()
        displayWineryName()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func displayWineryName() {
        wineryNameLabel.text = winery!.name
    }
    
    func displayWineryDescription() {
        wineryDescriptionTextView.text = "Hi!"
        wineryDescriptionTextView.text = "hey there!"
        
    }
    
    
}
