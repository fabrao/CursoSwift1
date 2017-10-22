//
//  Meal.swift
//  eggplant-brownie
//
//  Created by Renan Fabrão on 22/10/2017.
//  Copyright © 2017 Renan Fabrão. All rights reserved.
//

import Foundation

class Meal {
    let name:String
    let happiness:Int
    let items = Array<Item>()
    
    init(name:String, happiness:Int){
        self.name = name
        self.happiness = happiness
    }
    
    func allCalories() -> Double{
        var totalCalories = 0.0
        for item in items{
            totalCalories += item.calories
        }
        return totalCalories
    }
}
