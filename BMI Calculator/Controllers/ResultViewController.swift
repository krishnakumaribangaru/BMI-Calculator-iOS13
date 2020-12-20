//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by veerababu mulugu on 12/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResultLabel.text = bmiValue
    }

    @IBAction func recaluculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
