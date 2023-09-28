//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by CANSU on 3.09.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain{
    
    func calculateBMI (height:Float,weight:Float){
        let bmi = weight/(height*height )
    }
    mutating func getBMIValue(){
     result2 = Int(height/weight)
    }
}
