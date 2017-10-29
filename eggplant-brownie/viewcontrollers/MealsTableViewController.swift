//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Renan Fabrão on 29/10/2017.
//  Copyright © 2017 Renan Fabrão. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController {
    
    var meals = [Meal("EggPlant Brownie", 5),
                 Meal("Zucchini Muffin", 3),
                 Meal("Daniela's Cheesecake", 5)]
    
    func add(_ meal: Meal){
        meals.append(meal)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addMeal"){
            let view = segue.destination as! ViewController
            view.mealsTable = self
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = meal.name
        return cell
    }
}
