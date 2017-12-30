//
//  ViewController.swift
//  shake with sounds
//
//  Created by Matson on 3/9/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["breathing", "anger", "dontunderestimate", "giveyourself", "yourfather"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            var randomNumber = Int(arc4random_uniform(UInt32(sounds.count)))
            
            
            print("Device was shaken")
            
            var fileLocation = NSBundle.mainBundle().pathForResource(sounds[randomNumber], ofType: ".mp3")
            
            do { try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
                
                player.play()
                
            } catch {}
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

