//
//  ViewController.swift
//  HelloWorld
//
//  Created by Matson on 1/28/16.
//  Copyright © 2016 Matson. All rights reserved.
//


// This is a comment



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    
    @IBOutlet var textField: UITextField!

    @IBAction func Submit(sender: AnyObject) {
        print ("tapped")
        
        
        label.text = textField.text
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

