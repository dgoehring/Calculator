//
//  ViewController.swift
//  Don's Calculator
//
//  Created by user on 9/12/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userTyping: Bool = false    //when first start the calculator, user typing is false, not typing yet
    
    var displayValue: Double {
        
        get{
            
        return Double(display.text!)!             //display.text is the blue bar
        
        }
    
    set {
    
            display.text = String(newValue)
    
    
    
        }
    }
    
    
        private var brain = CalculatorBrain()      //  Added this new function in day 2
    
    
    
    
    
    //The following performOperation is to perferform operation such as Pi, Square Root
    @IBAction func performOperation(_ sender: UIButton) {
        
        
        //issue once you are in Pi, when you type a number, it will concat the number to the end of Pi
        
//        userTyping = false    // original from day 1
        
        
        if userTyping {
            
            
            brain.setOperand(displayValue)
            userTyping = false
            
            
            
        }
        
        if let mathSymbol = sender.currentTitle {
            brain.performOperation(mathSymbol)
            
            
        }
        
        
        
        if let result = brain.result{
            
            
            displayValue = result   // if brain give me something, that is the results.
        }
        
        
    }
    
        
        
    
    
        
     // move this code to the Struct
  //      if let mathSymbol = sender.currentTitle{            // this is optional so the value can be a nil or nothing
 /*          
             
             // remove this entire come to func performOperation
             
             
             switch mathSymbol {
                case "π":
                    display.text = String(Double.pi)            // can not assign pi as text, need to cast in as string
                
                case "√":
                
              //      display.text  = String(sqrt(Double(display.text!)!))  original first class
                
                display.text  = String(sqrt(displayValue))      //new code on day 2 to replace the above line
                
                // since we are using awitch, all condition must be handle, so we need to have a default
                
                default:
                    break
                
                
                }
        
             }
            
        */
        
    
        
    
    
    
    
    @IBOutlet var display: UILabel!             // reference the blue bar

    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!            // ! is an unwrap - even if no value it will be an empty string  - ! is Optional
        
 //        display.text = digit                        // display the digit - original workin in progress
        
        if userTyping {                               // if it is in the middle of typing, then excute the code in between
        
        
        
        // take the current value and concate it together
        let textCurrentlyInDisplay = display.text!      //! is an unwrap - need to unwrapp it
        
        display.text = textCurrentlyInDisplay + digit                        // display the digit
        
        
        //print(digit)

        } else {                                        // just override everthinbg with the digit the user just typed
            
            display.text = digit
            
            userTyping = true
        
        }
        
    }
    // in the control commmand space (emoji mode) - hold option P for Pi, option v is the square root
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
    }

