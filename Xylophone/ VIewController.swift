//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    
    //var xylophoneSound = NSURL(fileURLWithPath: Bundle.mainBundle().pathForResource("note1", ofType: "wav")!)
    
   // var audioPlayer = AVAudioPlayer()
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(key: sender.tag)
        
    }
    
    
    func playSound(key : Int) {
        
        let soundURL = Bundle.main.url(forResource: "note\(key)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

