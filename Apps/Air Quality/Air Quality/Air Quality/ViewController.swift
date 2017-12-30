//
//  ViewController.swift
//  Air Quality
//
//  Created by Matson on 2/3/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityTextField: UITextField!
    
    @IBAction func findQuality(sender: AnyObject) {
        
        let url = NSURL(string: "https://airnow.gov/index.cfm?action=airnow.local_city&cityid=186")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                let websiteArrary = webContent?.componentsSeparatedByString("<a href=\"https://www.airnow.gov/index.cfm?action=pubs.aqiguideozone\" class=\"AQILegendURL\">")
                
                if websiteArrary!.count > 0 {
                    
                    let weatherArray = websiteArrary![1].componentsSeparatedByString("</a>")
                    
                    if weatherArray.count > 0 {
                        
                    }
                    
                    
                    
                }
                
            }
            
            
        }
        task.resume()
        
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}