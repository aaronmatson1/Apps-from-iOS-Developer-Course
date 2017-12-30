//
//  ViewController.swift
//  Is It Prime
//
//  Created by Matson on 5/7/16.
//  Copyright © 2016 Matson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultsLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            
            }
        
            if number != 2 && number != 1 {
            
                for var i = 2; i < number; i++ {
                
                    if number % i == 0 {
                    
                        isPrime = false
                    
                    }
                
                }
            
            }
        
            if isPrime {
            
                resultsLabel.text = "\(number) is prime"
            
            }else {
            
                resultsLabel.text = "\(number) is not prime"
            
            }
        
        }else {
            
             resultsLabel.text = "Not Valid Entry"
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

