//
//  input.swift
//  simpleCalculator
//
//  Created by Tracy Chen on 3/4/19.
//  Copyright © 2019 Tracy. All rights reserved.
//

import Foundation

class Input {
    var inputId: Int = 0
    var inputString: String = ""
    
    func initialize(inputId: Int, inputString: String) -> Input {
        self.inputId = inputId
        self.inputString = inputString
        return self
    }
    
    //get inputId
    func getInputId() -> Int {
        return self.inputId
    }
    
    //set inputId
    func setInputID(id: Int) -> Void {
        self.inputId = id
    }
    //get inputString
    func getInputString() -> String {
        return self.inputString
    }
    
    //set inputString
    func setInputString(string: String) -> Void {
        self.inputString = string
    }
}
