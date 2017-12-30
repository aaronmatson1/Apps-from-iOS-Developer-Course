//
//  ViewController.swift
//  Animation
//
//  Created by Matson on 10/21/16.
//  Copyright © 2016 Matson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        }else{
            
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
    }
    
    func doAnimation() {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }
        
        alienImage.image = UIImage(named: "frame\(counter).png")
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewDidLayoutSubviews() {
        
        alienImage.frame = CGRectMake(100, 20, 0, 0)
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
            
            self.alienImage.frame = CGRectMake(100, 20, 100, 200 )
            
        }
        
        
    }
    
    */
    
    
    
    
    
    
}

