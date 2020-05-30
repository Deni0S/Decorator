//
//  Decorator.swift
//  Decorator
//
//  Created by Денис Баринов on 30.5.20.
//  Copyright © 2020 Денис Баринов. All rights reserved.
//

import Foundation

protocol Coffee {
    var cost: Int { get }
}

protocol CoffeeDecorator: Coffee {
    var base: Coffee { get }
    init(base: Coffee)
}

class SimpleCoffee: Coffee {
    var cost: Int = 90
    
}

class Milk: CoffeeDecorator {
    var base: Coffee
    
    var cost: Int {
        return base.cost + 20
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Whip: CoffeeDecorator {
    var base: Coffee
    
    var cost: Int {
        return base.cost + 30
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Sugar: CoffeeDecorator {
    var base: Coffee
    
    var cost: Int {
        return base.cost + 10
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}
