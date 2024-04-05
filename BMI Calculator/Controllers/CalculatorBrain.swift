//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ömer Yılmaz on 4.04.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() ->String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi!.advice
    }
    
    func getColor() -> UIColor{
        return bmi!.color
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue <= 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: .blue)
        }else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit As a Fiddle!", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies", color: .red)
        }
                
    }
}
