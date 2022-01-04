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
        firstPerson.name = "Oleg"
        let secondPerson = firstPerson
        secondPerson.name = "Ivan"
        print("The same memory? \(firstPerson === secondPerson)")
        
        let thirdPerson = firstPerson.clone()
        print("The same memory? \(firstPerson === thirdPerson)")
    }
}

