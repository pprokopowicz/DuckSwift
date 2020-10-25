//
//  GetState.swift
//
//
//  Created by Piotr Prokopowicz on 30/09/2020.
//

/// Function type that returns some object that conforms to `StateProtocol`. Used inside `Thunk` protocol.
public typealias GetState = () -> StateProtocol?
