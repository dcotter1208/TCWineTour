//
//  WineryDetailVC.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/28/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class WineryDetailVC: UIViewController {
    
    let selectedWinery = Winery?()
    
    @IBOutlet weak var wineryNameLabel: UILabel!
    
    @IBOutlet weak var wineryDescriptionTextView: UITextView!

    
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
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func displayWineryName() {
        wineryNameLabel.text = "hello"
    }
    
    func displayWineryDescription() {
        wineryDescriptionTextView.text = "Hi!"
        wineryDescriptionTextView.text = "hey there!"
        
    }

}