//
//  ViewController.swift
//  IsItPrime
//
//  Created by Arun Bernard on 12/27/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func isItPrimeButtonPressed(sender: UIButton) {
        
        // Get the input:
        var inputTextStr = inputTextField.text
        
        // Check optionals
        var inputTextStrOptional = inputTextStr.toInt()
        
        // If the input and optionals is not nil:
        if inputTextStr != nil && inputTextStrOptional != nil {
            
            // Call the output func:
            outputLabel.text = getOutput(inputTextStrOptional!)
        }
        
        // Show the output label:
        outputLabel.hidden = false
        
    }
    
    func getOutput(num: Int) -> String {
        
        if(isItPrime(num)) {
        
            return "\(num) is a prime number."
    
        }
        
        return "\(num) is not a prime number."
    
    }
    
    
    /*
    * If a number is having two factors
    * one is number: 1
    * second is the number itself
    * factors means: e.g 17
    * 1 * 17 = 17
    * Then the number is prime
    */
    
    func isItPrime(num : Int) -> Bool {
        
        var isPrime = true
        
        if(num == 1) {
            isPrime = false
        }
        
        
        if (num != 2 && num != 3 && num != 5) {
            
            
            /*
               If a number is divisible by 2 or 3 or 4 or 5
            then it is not a prime number
            */
            for var i = 2 ; i <= 5; i++ {
                if num % i == 0 {
                    isPrime = false
                }
            }
        }
        
        return isPrime
    }
}

