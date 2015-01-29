//
//  ViewController.swift
//  DogAge
//
//  Created by Brandon Holland on 1/26/15.
//  Copyright (c) 2015 Brandon Holland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterYearsField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: UIButton) {
        if (enterYearsField.text == ""){
        dogYearsLabel.text = "Dog Years: "
        }
        else{
        dogYearsLabel.text = "Dog Years: \(enterYearsField.text.toInt()!*7)"
        }
        enterYearsField.resignFirstResponder()
    }

    @IBAction func realConvertButton(sender: UIButton) {
        if (enterYearsField.text == ""){
            dogYearsLabel.text = "Dog Years: "
        }
        else{
            var age:Double
            var y = Double(enterYearsField.text.toInt()!)
            if (y <= 2){
                age = y*10.5;
            }else{
                age = 21 + (y-2)*4
            }
            dogYearsLabel.text = "Dog Years: \(age)"
        }
        enterYearsField.resignFirstResponder()
    }
}

