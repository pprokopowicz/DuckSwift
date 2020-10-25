//
//  Middleware.swift
//
//
//  Created by Piotr Prokopowicz on 02/10/2020.
//

/// Protocol that enables users to add extra functionalities to `Store` class.
public protocol Middleware {
    
    /// Function called after `Action` was dispatched to the `Store` but before it was processed byt the `Reducer`.
    func body(dispatch: @escaping DispatchFunction, state: @escaping GetState) -> (@escaping DispatchFunction) -> DispatchFunction
    
}
