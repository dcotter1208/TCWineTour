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
    
    
    func displayWineryName() {
        wineryNameLabel.text = winery!.name!
        addressLabel.text = winery!.address!
        websiteLabel.text = "\(winery!.website!)"
        phoneNumberlabel.text = "\(winery!.phoneNumber!)"
        
    }
    
    func displayWineryDescription() {
        wineryDescriptionTextView.text = "Hi!"
        wineryDescriptionTextView.text = "hey there!"
        
    }
    
    
}
