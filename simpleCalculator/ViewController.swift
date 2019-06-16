//
//  ViewController.swift
//  simpleCalculator
//
//  Created by Tracy Chen on 3/4/19.
//  Copyright © 2019 Tracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Int = 0
    var previousNumber:Int = 0
    var runOperation = false
    var operation = 0
    var operationSign = ""
    var emptyDictionary: [Int: String] = [:]
    var arrayPastDictionary: [[Int: String]] = []
    var previousArray: [String] = []
    var currentCounter = 0
    var inputHistory: [Input] = []
    
    @IBOutlet weak var display: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func numbers(_ sender: UIButton) {
        if runOperation == true
        {
            display.text = String(sender.tag-1)
            numberOnScreen = Int(display.text!)!
            runOperation = false
        }
        else {
            display.text = display.text! + String(sender.tag-1)
            numberOnScreen = Int(display.text!)!
    }
}
    
    @IBAction func button(_ sender: UIButton) {
        if display.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Int(display.text!)!
            
            if sender.tag == 12 // Divide
            {
                display.text = "/"
                operationSign = "/"
            }
            else if sender.tag == 13 // Multiply
            {
                display.text = "x"
                operationSign = "x"
            }
            else if sender.tag == 14 // Minus
            {
                display.text = "-"
                operationSign = "-"
            }
            else if sender.tag == 15 // Plus
            {
                display.text = "+"
                operationSign = "+"
            }
            operation = sender.tag
            runOperation = true;
        }
        else if sender.tag == 16 {
            var userInput = Input()
            userInput.inputId = currentCounter
            
            if operation == 12 // Divide
            {
                display.text = String(previousNumber / numberOnScreen)
                userInput.inputString = String(previousNumber) + String(operationSign) + String(numberOnScreen)
                inputHistory.append(userInput)
                print(arrayPastDictionary)
            }
            else if operation == 13 // Multiply
            {
                display.text = String(previousNumber * numberOnScreen)
                userInput.inputString = String(previousNumber) + String(operationSign) + String(numberOnScreen)
                inputHistory.append(userInput)

                print(arrayPastDictionary)
            }
            else if operation == 14 // Minus
            {
                display.text = String(previousNumber - numberOnScreen)
                userInput.inputString = String(previousNumber) + String(operationSign) + String(numberOnScreen)
                inputHistory.append(userInput)

                print(arrayPastDictionary)
            }
            else if operation == 15 // Add
            {
                display.text = String(previousNumber + numberOnScreen)
                userInput.inputString = String(previousNumber) + String(operationSign) + String(numberOnScreen)
                inputHistory.append(userInput)

                print(arrayPastDictionary)
            }
            currentCounter+=1
        }
        else if sender.tag == 11
        {
            display.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
    }
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        if sender.tag == 17 {
            display.text = String(previousNumber) + String(operationSign) + String(numberOnScreen)
            print(display.text)
            previousArray.append(display.text!)
            print(previousArray)
        }
    }
    
}



