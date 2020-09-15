//
//  Wage.swift
//  WindowShopper
//
//  Created by Rohit Jangid on 11/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, forPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
