//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bmiValue = "0.0"
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weihgtSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    

    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weihgt = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weihgt)Kg"
    }
    @IBAction func caluculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weihgtSlider.value
        let bmi = weight / pow(height, 2)
       bmiValue = String(format: "%.1f", bmi)
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = bmiValue
        }
    }
}


