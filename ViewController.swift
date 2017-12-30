//
//  ViewController.swift
//
//  Created by Nikhil Kanamarla
//  Copyright (c) 2015 Nikhil Kanamarla. All rights reserved.
//
import Foundation
import UIKit
import Social


class ViewController: UIViewController {
    
    @IBOutlet weak var TechByteLabel: UILabel!
    

    
    
    let TechnologyfactBook = TechFactBook()
    var TechfactIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.integer(forKey: "ByteLocation") != 0 {
            TechByteLabel.text = TechnologyfactBook.TechfactsArray[ UserDefaults.standard.integer(forKey: "ByteLocation")]
        } else {
            //The code that first displays the values if the user
            //just started the app
      
            //The code that first displays the values if the user
            //just started the app

        }
    
        
        //Checks if the value that is saved into the app is greater than the
        //starting position the app first starts at (assuming index 0?)
        
    }
    @IBAction func showFunFact() {
        if (UIApplication.shared.applicationIconBadgeNumber != 0){
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
        if (TechfactIndex >= TechnologyfactBook.TechfactsArray.count) {
            self.TechfactIndex = 0
        }
    

        TechfactIndex = UserDefaults.standard.integer(forKey: "ByteLocation")
        
            TechByteLabel.text = TechnologyfactBook.TechfactsArray[TechfactIndex]
       
        TechfactIndex += 1
    
        if (TechfactIndex  == TechnologyfactBook.TechfactsArray.count) {
            self.TechfactIndex = 0
        }
        UserDefaults.standard.set(TechfactIndex, forKey: "ByteLocation")
        UserDefaults.standard.synchronize()
    }
 
    
    @IBAction func experiment(_ sender: AnyObject) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter){
            
            
            let tweetSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            
            tweetSheet.setInitialText(TechByteLabel.text)
         
            
            
            self.present(tweetSheet, animated: true, completion: nil)
            
            
        } else {
            
            
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to share.", preferredStyle: UIAlertControllerStyle.alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
    }


    }

       


