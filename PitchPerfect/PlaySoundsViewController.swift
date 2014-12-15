//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Joseph Reis on 12/6/14.
//  Copyright (c) 2014 JoeReis. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSound(speed:Float) {
        audioPlayer.stop()
        audioPlayer.rate = speed
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    @IBAction func playSlow(sender: UIButton) {
        playSound(0.5)
    }
    
    @IBAction func playFast(sender: UIButton) {
        playSound(1.5)
    }
    
    @IBAction func stopPlay(sender: UIButton) {
        audioPlayer.stop()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func playChipmunkAudio(sender: UIButton) {
    }

}
