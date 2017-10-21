//: Playground - noun: a place where people can play

import UIKit

class Meal{
    var happiness:Int?
    var name:String?
}

var brownie = Meal()
brownie.name = "eggplant brownie"

print(brownie.happiness)
print(brownie.name)

if let name = brownie.name{
    print(name.uppercased())
}else{
    print("name is nil")
}

if let number = Int("5"){
    print(number)
}else{
    print("number is nil")
}
