//
//  ViewController.swift
//  table-dynamic-meal
//
//  Created by Renan Fabrão on 29/10/2017.
//  Copyright © 2017 Renan Fabrão. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let meals = ["eggplant brownie", "zucchini muffin", "guilherme's sudubu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tela carregada com sucesso")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = meal
        return cell
    }

}

