//
//  TechTimeSelection.swift
//  Daily Byte
//
//  Created by Nikhil Kanamarla 
//  Copyright (c) 2015 Journey Apps. All rights reserved.
//

import Foundation
import UIKit
class ViewController2: UIViewController {
    

@IBOutlet weak var datePicker: UIDatePicker?



@IBAction func DateChosen(_ sender: UIButton) {
    let localNotification:UILocalNotification = UILocalNotification()
    localNotification.applicationIconBadgeNumber = UIApplication.shared.applicationIconBadgeNumber + 1
    localNotification.fireDate = datePicker?.date
    localNotification.repeatInterval = .day
    localNotification.alertBody = "Check out your byte of the day"
    localNotification.alertAction = "Open"
    localNotification.timeZone = TimeZone.current
    localNotification.category = "INVITE_CATEGORY";
    UIApplication.shared.scheduleLocalNotification(localNotification)
    navigationController!.popViewController(animated: true)
}

@IBAction func GoBack(_ sender: UIBarButtonItem) {
    navigationController!.popViewController(animated: true)
}
}
