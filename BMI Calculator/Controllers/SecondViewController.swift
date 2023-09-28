//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by CANSU on 15.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
class  secondViewController: UIViewController{
    var bmiValue="0.0"
    override func viewDidLoad() {
    super.viewDidLoad()

        view.backgroundColor = .systemPink
        
        let Label = UILabel()
        Label.text = bmiValue
        Label.frame=CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(Label)
    }
    
}
