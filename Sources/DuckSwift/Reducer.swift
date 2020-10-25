//
//  Reducer.swift
//
//
//  Created by Piotr Prokopowicz on 29/09/2020.
//

/// Function type that is responsible for processing the incoming actions into new `State` values.
public typealias Reducer<ReducerState: StateProtocol> = (_ state: ReducerState, _ action: Action) -> ReducerState
