//
//  Double+Utils.swift
//  EnjiatoCore
//
//  Created by Jurek Herwig on 11.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import Foundation

extension Double {
    public var currency: String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency

        return currencyFormatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
}
