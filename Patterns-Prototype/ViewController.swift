//
//  ViewController.swift
//  Patterns-Prototype
//
//  Created by Ruslan on 03.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // the first method to make a deep copy
        // 2
        
        let firstPerson = Person()
        firstPerson.name = "John"
        let secondPerson = firstPerson
        secondPerson.name = "Richard"
        print("The same memory? \(firstPerson === secondPerson)")
        
        let thirdPerson = firstPerson.clone()
        print("The same memory? \(firstPerson === thirdPerson)")
        
        // the second method to make a deep copy
        // 4
        
        let firstAnimal = Animal(species: "Bear")
        let secondAnimal = firstAnimal
        print("\nThe same memory? \(firstAnimal === secondAnimal)")
        
        let thirdAnimal = firstAnimal.copy()
        print("The same memory? \(firstAnimal === thirdAnimal)")
        
        // the third method to make a deep copy
        // 6
        
        let firstCar = Car(brand: "Audi")
        let secondCar = firstCar
        print("\nThe same memory? \(firstCar === secondCar)")
        
        let thirdCar = Car(firstCar)
        print("The same memory? \(firstCar === thirdCar)")
        
        let fourthCar = firstCar.duplicate()
        print("The same memory? \(firstCar === fourthCar)")
    }
}

