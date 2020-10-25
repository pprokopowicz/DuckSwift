//
//  DispatchFunction.swift
//
//
//  Created by Piotr Prokopowicz on 29/09/2020.
//

/// Function type defining stores dispatch function. Used inside `Thunk` protocol.
public typealias DispatchFunction = (_ action: Action) -> Void
