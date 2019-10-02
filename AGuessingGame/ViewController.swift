//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Gabriela Shaooli on 2019-10-01.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    let targetNumber = Int.random(in:1...1000)

    // MARK: Initializers

    
    // MARK: Methods (functions)-behavior
    
    // Runs as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer',wich is an instance of the
        // class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer ()
        
        // Make a strian that contains what we want to the computer to say
        let message = "I'm thinking of a number beteween 1 and 100. Guess what it is."

        // Make an object named 'utterance' wich is an instance of the class
        // AVSpeechUterance
        let utterance = AVSpeechUtterance (string: message)

        // Speech the message
        synthesizer.speak(utterance)
        
    }

}

