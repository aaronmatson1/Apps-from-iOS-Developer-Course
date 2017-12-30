//
//  ViewController.swift
//  Back To Bach
//
//  Created by Matson on 2/15/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }
    
    @IBOutlet var volumeSlider: UISlider!
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = volumeSlider.value
        
    }
    
    @IBOutlet var scrubSlider: UISlider!
    
    @IBAction func scrub(sender: AnyObject) {
        
        player.currentTime = NSTimeInterval(scrubSlider.value)
        
    }
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        player.pause()
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:  NSBundle.mainBundle().pathForResource("Slow Down", ofType: "mp3")!))
            
        }catch{
            
            //It didnt work!
        }
        
    }
    
    func updateScrubSlider() {
       
        scrubSlider.value = Float(player.currentTime)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            
        try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:  NSBundle.mainBundle().pathForResource("Slow Down", ofType: "mp3")!))
            
            scrubSlider.maximumValue = Float(player.duration)
            
            
        }catch{
            
            //It didnt work!
        }
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateScrubSlider"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

