//
//  WineryDetailVC.swift
//  TCWineTour
//
//  Created by Donovan Cotter on 10/28/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class WineryDetailVC: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var wineryNameLabel: UILabel!
    @IBOutlet weak var wineryDescriptionTextView: UITextView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var phoneNumberlabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var winery = Winery?()
    var website = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "grapes")
//        wineryDescriptionTextView.alpha = 0.8
//        wineryDescriptionTextView.textColor = UIColor.whiteColor()
        
        displayWineryInfo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func websiteLabelClick(sender: AnyObject) {
        launchWebsiteOnClick()
    }
    
    
    func displayWineryInfo() {
        wineryNameLabel.text = winery!.name!
        addressLabel.text = winery!.address!
        website = "\(winery!.website)"
        websiteLabel.text = website
        phoneNumberlabel.text = "\(winery!.phoneNumber!)"
        wineryDescriptionTextView.text = winery!.description
        
    }
    
    func launchWebsiteOnClick() {
        UIApplication.sharedApplication().openURL(NSURL(string: website)!)
    }
    
    
    
    
}
