//
//  AppDelegate.swift
//  zc3
//
//  Created by TongGuwei on 15/10/31.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit
import SwiftPages

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var centerContainer: MMDrawerController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var rootViewController = self.window!.rootViewController
        
        let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var centerViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("mainView") as! ViewController
        
        var leftViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("leftView") as! LeftViewController
        
        var rightViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("rightView") as!
        RightViewController
        
        var leftNav = UINavigationController(rootViewController: leftViewController)
        
        var centerNav = UINavigationController(rootViewController: centerViewController)
        
        var rightNav = UINavigationController(rootViewController: rightViewController)
        
        centerContainer = MMDrawerController(centerViewController: centerNav, leftDrawerViewController: leftNav, rightDrawerViewController: rightNav)
        
        centerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.PanningCenterView
        centerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.PanningCenterView
        
        window!.rootViewController = centerContainer
        window!.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

