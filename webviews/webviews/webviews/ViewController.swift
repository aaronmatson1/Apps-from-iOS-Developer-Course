//
//  ViewController.swift
//  webviews
//
//  Created by Matson on 5/24/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var webview: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let url = NSURL(string: "https://www.devcoremarketing.com")
        
        let request = NSURLRequest(URL: url!)
        
        webview.loadRequest(request)


      /*
        var html = "<html><body><h1>My Page</h1><p>This is my business page</p></body></html>"
        
        webview.loadHTMLString(html, baseURL: nil)
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

