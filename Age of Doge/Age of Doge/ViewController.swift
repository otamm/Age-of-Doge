//
//  ViewController.swift
//  Age of Doge
//
//  Created by Otavio Monteagudo on 1/3/15.
//  Copyright (c) 2015 Otavio Monteagudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlet connections
    
    @IBOutlet weak var humanAgeInput: UITextField!
    
    @IBOutlet weak var dogYearsOutput: UILabel!
    
    @IBOutlet weak var comradeDogeWords: UILabel!
    
    
    //generated functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //custom functions
    
    @IBAction func convertToDogAge(sender: UIButton) {
        var dogYears = humanAgeInput.text.toInt()!
        dogYears = dogYears * 7
        
        dogYearsOutput.text = "\(dogYears)" + ", woof!"
        if (dogYearsOutput.hidden == true) {
        dogYearsOutput.hidden = false
        }
    }
    
    @IBAction func changeDogesWords(sender: UIButton) {
    }
    

}

