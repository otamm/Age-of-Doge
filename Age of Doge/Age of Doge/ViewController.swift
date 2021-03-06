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
    
    @IBOutlet weak var changeDogeWords: UIButton!
    
    //custom variables
    
    
    var wordsOfWisdom: [String] = ["Did yuo kno?This is a human age to dog age converter (aka multiply by 7). If you really need this, woof such dumb!", "Did yuo kno? If Chairman Stalin were alive in 1957, he would also have killed Comrade Laika, woof!","Did yuo kno? Comrade Laika became a postcard in Romania celebrating the first cosmonaut, woof!","Did yuo kno? Comrade Laika was born in 1954, weighed 5kg and was a streetdog in Moscowgrad, woof!","Did yuo kno? Comrade Laika was already intended to die when Sputnik 2 was launched, woof! She died of the machines overheating, much shit, woof!","Did yuo kno? Comrade Laika had a monument of her built in 2008 near the space station in Moscowgrad that launched her, woof!"]
    
    var wordsEnumeration = 0
    
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
        var humanYears = humanAgeInput.text.toInt()!
        // dogYears = dogYears * 7, this is the dumb way to convert.
        if humanYears <= 2 {
            var dogYears = Double(humanYears) * 10.5
            dogYearsOutput.text = "\(dogYears)" + ", woof! Young dawg!"
        } else if humanYears > 2 {
            var dogYears = (humanYears - 2) * 4 + 21 // 21 = 2 * 10.5, for the first two years. For the third year on, multiply each year bigger than 2 by 4 and then add to the total.
            if dogYears < 60 {
                dogYearsOutput.text = "\(dogYears)" + ", woof!Lucky you'ze dawg, else you work lol"
            } else {
                dogYearsOutput.text = "\(dogYears)" + ", woof! Oldie dawg!"
            }
        } else {
            comradeDogeWords.text = "R U sure you've put a number fit for an age? Wow, such dumb! Woof!"
        }
        
        if (dogYearsOutput.hidden == true) {
        dogYearsOutput.hidden = false
        }
    }
    
    @IBAction func changeDogesWords(sender: UIButton) {
        comradeDogeWords.text = wordsOfWisdom[wordsEnumeration]
        wordsEnumeration += 1
        
        if (wordsEnumeration == wordsOfWisdom.count) {
            wordsEnumeration = 0
        }
    }
    

}

