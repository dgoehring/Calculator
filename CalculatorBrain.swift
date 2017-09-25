//
//  CalculatorBrain.swift
//  Don's Calculator
//
//  Created by user on 9/14/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    private var accummulator: Double?
    
    private enum Operation {
    
        case constant(Double)
        case unary((Double) -> Double)                   //unary is a one;
        case binary((Double, Double) -> Double)
        case equals
        
    }
    
    private var operations: Dictionary<String, Operation> = ["π": Operation.constant(Double.pi), "√":Operation.unary(sqrt)]
    
    func performOperation(_ symbol:String){
        
        if let operation = operations[symbol] {        //this let check rather the operation has a value
            
            switch operation {
                
                case.constant(let value)
            }
            
            
        }
        
        
        }
        
        
    }


