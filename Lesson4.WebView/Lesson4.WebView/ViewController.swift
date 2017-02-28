//
//  ViewController.swift
//  Lesson4.WebView
//
//  Created by 飯村美紀 on 2017/02/28.
//  Copyright © 2017年 miki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    var targetURL = "http://www.mht-code.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     loadAddressURL()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadAddressURL() {
        let requestURL = NSURL(string: targetURL)
        let req = NSURLRequest(url: requestURL as! URL)
        webView.loadRequest(req as URLRequest)
    }

}

