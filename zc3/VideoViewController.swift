//
//  VideoViewController.swift
//  zc3
//
//  Created by TongGuwei on 15/11/2.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var myWebview: UIWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let navigator = self.navigationController as? VideoNavigatorController
        if let url = navigator?.senderData?["url"] {
            let myUrl = NSURL(string: url as! String)
            let myUrlrequest:NSURLRequest = NSURLRequest(URL: myUrl!)
            self.myWebview.loadRequest(myUrlrequest)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        self.myActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.myActivityIndicator.stopAnimating()
    }
    
    @IBAction func closeButtonTapped(sender: AnyObject) {   
        self.dismissViewControllerAnimated(true, completion: nil)
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
