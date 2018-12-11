//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by MICHAEL DUMITRESCU on 11/12/18.
//  Copyright © 2018 MICHAEL DUMITRESCU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var examWeightTextField: UITextField!
    @IBOutlet weak var necessaryGradeLabel: UILabel!
    @IBOutlet weak var ExtraCreditLabel: UILabel!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onCalcGradeTapped(_ sender: Any) {
        guard let desiredGrade = Double(desiredGradeTextField.text!) else {return}
        guard let currentGrade = Double(currentGradeTextField.text!) else {return}
        guard let examWeight = Double(examWeightTextField.text!) else {return}
        let necessaryGrade = (100.0 * desiredGrade - (100.0 - examWeight) * currentGrade) / examWeight
        necessaryGradeLabel.text = String(necessaryGrade)
    
        if necessaryGrade  <= 100.0 {
            self.view.backgroundColor = .green
        } else{
            self.view.backgroundColor = .red
            ExtraCreditLabel.text = "Ask the professor for any extra cedit opportunities!"
        }
       
        
        
    }
    
    @IBAction func DesiredGradeSegmentOn(_ sender: Any) {
    
    
    }
    
        
        
    }
    
    
    


