//
//  LeftViewController.swift
//  zc3
//
//  Created by TongGuwei on 15/10/31.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myCustomTable: UITableView!
    var menuItems: [String] = ["Main", "About"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myCustomTable.separatorStyle = UITableViewCellSeparatorStyle.None
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("menu", forIndexPath: indexPath)
        as! MyCustomTableViewCell
        cell.menuItemLabel.text = self.menuItems[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch (indexPath.row) {
        case 0:
            var centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("mainView") as! ViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegeate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            
            appDelegeate.centerContainer!.centerViewController = centerNavController
            appDelegeate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        case 1:
            var aboutViewController = self.storyboard?.instantiateViewControllerWithIdentifier("aboutView") as! AboutViewController
            var aboutNavController = UINavigationController(rootViewController: aboutViewController)
            var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = aboutNavController
            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        default:
            print("\(menuItems[indexPath.row]) is selected")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
