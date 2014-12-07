//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Joseph Reis on 12/1/14.
//  Copyright (c) 2014 JoeReis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingProgress: UILabel!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        
        //TODO: record the user's voice
        recordingProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func stopAudio(sender: UIButton) {
        recordingProgress.hidden = true
    }

}

