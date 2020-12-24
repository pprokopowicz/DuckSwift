//
//  Store.swift
//
//
//  Created by Piotr Prokopowicz on 29/09/2020.
//

import Foundation

/// Store class is the default implementation of `StoreProtocol`. Store is being initialized with a Reducer and applications initial state.
public final class Store<StoreState: StateProtocol>: StoreProtocol {
    
    public let reducer: Reducer<StoreState>
    @Published public var state: StoreState
    private let middlewares: [Middleware]
    private lazy var dispatchFunction: DispatchFunction = {
        middlewares
            .reversed()
            .reduce(
                { [weak self] action in
                    self?.defaultDispatch(action: action) },
                { dispatchFunction, middleware in
                    let dispatch: DispatchFunction = { [weak self] in self?.dispatch(action: $0) }
                    let getState = { [weak self] in self?.state }
                    return middleware.body(dispatch: dispatch, state: getState)(dispatchFunction)
                })
    }()
    
    /// Initializes the store with a reducer function and initial state of the applicaiton.
    ///
    /// - Parameter reducer: Function type used to process actions into new state values.
    /// - Parameter state: Initial state of the application.
    /// - Parameter middlewares: Array of middlewares for the store to use.
    public init(reducer: @escaping Reducer<StoreState>, state: StoreState, middlewares: [Middleware] = []) {
        self.reducer = reducer
        self.state = state
        self.middlewares = middlewares
    }
    
    public func dispatch(action: Action) {
        dispatchFunction(action)
    }
    
    private func defaultDispatch(action: Action) {
        state = reducer(state, action)
    }
    
}
