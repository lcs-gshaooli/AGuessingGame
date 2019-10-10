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
    let targetNumber = Int.random(in:1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    // MARK: Initializers

    
    // MARK: Methods (functions)-behavior
    
    // Runs as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        speak(message: "I'm thinking of a number between 1 and 100. Guess what it is.")
       
        // Report the target to the console for testing purpose
        print("for testing purposes, the random number is /(targetNumber)")
        
    }
    
    // Will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value from the text file
        guard let guessText = submittedGuess.text, guessText != "" else {
           speak(message: "Bro, try entering a value.")
            return
        }
 
        //Try to convert the string into an integer data type
        guard let guessNumber = Int (guessText) else {
            speak(message: "Hey, how about entering a number")
            return
        }
        
        
        // For testing purposes, what was the gues?
          print("For testing purposes, the guess made was /(guessNumber)")
        
      // Give the appropriate feedback to the user
        if guessNumber  > targetNumber {
            
            speak (message: "Guess lower next time.")
            
        } else if guessNumber < targetNumber {
            
            speak(message: "Guess higher next time.")
            
        } else {
            
           speak(message: "You are correct!.")
            
        }
        
    }
    
    // A function that will speak whatever message is provided
    func speak (message: String) {
    
    // Make an object named 'synthesizer',wich is an instance of the
    // class 'AVSpeechSynthesizer'
    let synthesizer = AVSpeechSynthesizer ()
    
    // Make an object named 'utterance' wich is an instance of the class
    // AVSpeechUterance
    let utterance = AVSpeechUtterance(string: message)
    
    // Speech the message
    synthesizer.speak(utterance)
        
        //print the sessage
        print(message)

    }
}
