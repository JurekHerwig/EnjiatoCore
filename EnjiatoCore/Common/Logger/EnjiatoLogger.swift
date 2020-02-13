//
//  EnjiatoLogger.swift
//  EnjiatoCore
//
//  Created by Jurek Herwig on 10.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import Foundation

public class EnjiatoLogger {
    public static let shared = EnjiatoLogger()

    public func log(_ error: Error) {
        print(error)
    }

    public func log(_ message: String) {
        print(message)
    }
}
