//
//  Animal.swift
//  Patterns-Prototype
//
//  Created by Ruslan on 04.01.2022.
//

import Foundation

// the second method to make a deep copy
// 3

class Animal {
    
    var species: String
    
    init(species: String) {
        self.species = species
    }
    
    func copy() -> Animal {
        return Animal(species: self.species)
    }
}
