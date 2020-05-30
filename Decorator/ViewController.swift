//
//  ViewController.swift
//  Decorator
//
//  Created by Денис Баринов on 30.5.20.
//  Copyright © 2020 Денис Баринов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let simpleCoffee = SimpleCoffee()
        let simpleCoffeeWithMilk = Milk(base: simpleCoffee)
        let simpleCoffeeWithMilkWhip = Whip(base: simpleCoffeeWithMilk)
        let simpleCoffeeWithMilkWhipSugar = Sugar(base: simpleCoffeeWithMilkWhip)
        print("Оплатите \(simpleCoffeeWithMilkWhipSugar.cost) рублей")
    }
}

