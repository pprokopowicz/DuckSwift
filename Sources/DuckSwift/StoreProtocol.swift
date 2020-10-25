//
//  StoreProtocol.swift
//
//
//  Created by Piotr Prokopowicz on 30/09/2020.
//

import Foundation

/**
 Defines requirements of Stores. Default implementation of this protocol is the `Store` class.
 Application should only use one store for the entirety of applicaction state.
 Stores dispatch actions to their defined reducer, which in turn return the new value of state. With the help of `ObservableObject`
 Store notifies it's subscribers of state changes.
 */
public protocol StoreProtocol: ObservableObject {
    
    /// Stores state type.
    associatedtype StoreState: StateProtocol
    
    /// Stores `Reducer` used to determine new value of `state`.
    var reducer: Reducer<StoreState> { get }
    /// Current application state.
    var state: StoreState { get }
    
    /// Dispatch function is used to pass actions on to reducer and update `state` property.
    /// - Parameter action: Action to be processed by the stores `reducer`.
    func dispatch(action: Action)
    
}
