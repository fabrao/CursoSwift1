//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Renan Fabrão on 07/10/2017.
//  Copyright © 2017 Renan Fabrão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField!
    
    @IBOutlet var happinessField : UITextField!
    
    @IBAction func add(){
        let name = nameField.text
        let happiness = happinessField.text
        
        print("eaten \(name ?? "--") with happiness \(happiness ?? "--")!");
    }
}
