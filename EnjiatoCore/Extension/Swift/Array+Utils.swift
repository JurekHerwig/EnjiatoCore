//
//  Array+Utils.swift
//  EnjiatoCore
//
//  Created by Jurek Herwig on 10.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import Foundation

extension Dictionary {
    public subscript(safe key: Key) -> Value? {
        get {
            self[key]
        }
        set {
            guard let newValue = newValue else { return }

            self[key] = newValue
        }
    }
}
