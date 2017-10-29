//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Renan Fabrão on 07/10/2017.
//  Copyright © 2017 Renan Fabrão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField : UITextField?
    var mealsTable : MealsTableViewController?
    
    @IBAction func add(){
        if(nameField == nil || happinessField == nil || mealsTable == nil){
            return
        }
        
        let name:String = nameField!.text!
        
        if let happiness = Int(happinessField!.text!){
            let meal = Meal(name, happiness)
            print("eaten \(meal.name) with happiness \(meal.happiness)!");
            mealsTable?.add(meal)
            if let navigation = navigationController {
                navigation.popViewController(animated: true)
            }
        }
    }
}
