//
//  ViewController.swift
//  zc3
//
//  Created by TongGuwei on 15/10/31.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swiftPagesView: SwiftPages!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let VCIDs : [String] = ["firstPage", "secondPage"]
        let buttonTitles : [String] = ["Home", "Places"]
        
        swiftPagesView.setOriginX(1.0)
        swiftPagesView.setOriginY(0.0)
        //        swiftPagesView.enableAeroEffectInTopBar(true)
        //        swiftPagesView.setButtonsTextColor(UIColor.whiteColor())
        //        swiftPagesView.setAnimatedBarColor(UIColor.whiteColor())
        swiftPagesView.initializeWithVCIDsArrayAndButtonTitlesArray(VCIDs, buttonTitlesArray: buttonTitles)
//        let videoController = self.storyboard?.instantiateViewControllerWithIdentifier("videoView") as? VideoViewController
//        self.navigationController?.pushViewController(videoController!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func leftSideTapped(sender: AnyObject) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func rightSideTapped(sender: AnyObject) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Right, animated: true, completion: nil)
    }
}