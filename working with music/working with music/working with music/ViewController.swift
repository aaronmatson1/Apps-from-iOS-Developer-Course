//
//  ViewController.swift
//  working with music
//
//  Created by Matson on 2/12/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
    }

    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    @IBOutlet var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("Slow Down", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
            
        } catch {
            
            //Process error here
            
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

