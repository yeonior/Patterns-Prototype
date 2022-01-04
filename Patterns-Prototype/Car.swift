//
//  Car.swift
//  Patterns-Prototype
//
//  Created by Ruslan on 04.01.2022.
//

import Foundation

// the third method to make a deep copy
// 5

protocol Copying {
    init(_ prototype: Self)
}

extension Copying {
    func duplicate() -> Self {
        return Self(self)
    }
}

class Car: Copying {
    
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    required init(_ prototype: Car) {
        self.brand = prototype.brand
    }
}
