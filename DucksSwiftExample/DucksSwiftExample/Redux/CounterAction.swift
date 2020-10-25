//
//  RandomizeAction.swift
//  DucksSwiftExample
//
//  Created by Piotr Prokopowicz on 02/10/2020.
//

import Foundation
import DuckSwift

enum CounterAction: Action {
    case increment
    case randomize
    case set(amount: Int)
}
