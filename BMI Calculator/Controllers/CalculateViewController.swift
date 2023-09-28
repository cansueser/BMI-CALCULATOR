//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider2: UISlider!
    
    @IBOutlet weak var weightSlider2: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        var currentValue = String(format:"%.1f ",sender.value)
        heightLabel.text = "\(currentValue) m"
        
        
    }
    
    var bmiValue="0.0"
    @IBAction func weigtSlider(_ sender: UISlider) {
        var currentValue2 = Int(sender.value)
        // weightLabel.text = "\(currentValue2) kg"
        weightLabel.text = String(format:"%.0f",sender.value)
        
        print("\(currentValue2) kg")
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func calculatePressed(_ sender: UIButton) {
         // let weight = weightLabel.text
        let height = heightSlider2.value
        let weight = weightSlider2.value
        calculatorBrain.calculateBMI(height:height,weight:weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
    
}
