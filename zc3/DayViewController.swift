//
//  DayViewController.swift
//  zc3
//
//  Created by TongGuwei on 15/11/2.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit
import PullToRefresh

class DayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var articles = ["测试1", "测试2"]
    var refresher = PullToRefresh()
    var nav: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.myTableView.addPullToRefresh(self.refresher, action: {
            let seconds = 4.5
            let delay = seconds * Double(NSEC_PER_SEC);
            let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            
            dispatch_after(dispatchTime, dispatch_get_main_queue(), {
                self.myTableView.endRefreshing()
            })
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("article", forIndexPath: indexPath) as! MyArticleTableViewCell
        cell.articleTitle.text = articles[indexPath.row]
        return cell;
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showVideo" {
            print(1)
            let svc = segue.destinationViewController as! VideoNavigatorController
            svc.senderData = ["url": "http://www.baidu.com"]
        }
    }

}
