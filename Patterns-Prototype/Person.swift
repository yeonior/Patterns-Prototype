//
//  Person.swift
//  Patterns-Prototype
//
//  Created by Ruslan on 04.01.2022.
//

import Foundation

// the first method to make a deep copy
// 1

class Person {
    
    var name: String = "John"
    
    func clone() -> Person {
        let person = Person()
        person.name = name
        return person
    }
}
