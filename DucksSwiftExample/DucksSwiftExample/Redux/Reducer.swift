//
//  Reducer.swift
//  DucksSwiftExample
//
//  Created by Piotr Prokopowicz on 02/10/2020.
//

import Foundation
import DuckSwift

func reducer(state: AppState, action: Action) -> AppState {
    var state = state
    
    switch action {
    case CounterAction.increment:
        state.counter += 1
    case CounterAction.randomize:
        state.counter = Int.random(in: -100...100)
    case CounterAction.set(let amount):
        state.counter = amount
    default:
        break
    }
    
    return state
}
