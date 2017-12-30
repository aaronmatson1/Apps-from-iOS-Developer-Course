//
//  ViewController.swift
//  JSON example
//
//  Created by Matson on 5/24/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:"https://freegeoip.net/json/")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data , response, error) -> Void in
            
            if let urlContent = data {
                
                do {
                
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(urlContent, options: NSJSONReadingOptions.MutableContainers)
                    
                    print(jsonResult["city"])
                
                }catch {
                    
                    print("JSON serialization failed")
                }
                
            }
            
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

