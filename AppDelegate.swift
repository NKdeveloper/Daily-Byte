
//
//  AppDelegate.swift
//  Daily Byte
//
//  Created by Nikhil Kanamarla on 7/17/15.
//  Copyright (c) 2015 Journey Apps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
             UITabBar.appearance().tintColor = UIColor.green
        if(UIApplication.instancesRespond(to: #selector(UIApplication.registerUserNotificationSettings(_:)))) {
            UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types:  [.alert, .badge], categories: nil))
        }
        
        return true
    }
    }

    func applicationDidEnterBackground(_ application: UIApplication) {

       
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
   
        
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }





