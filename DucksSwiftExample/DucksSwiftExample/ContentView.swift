//
//  ContentView.swift
//  DucksSwiftExample
//
//  Created by Piotr Prokopowicz on 02/10/2020.
//

import SwiftUI
import DuckSwift

struct ContentView: View {
    
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        VStack {
            Text("Current count \(store.state.counter)")
                .padding()
            
            Button("Increment") {
                store.dispatch(action: CounterAction.increment)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Store(reducer: reducer, state: AppState()))
    }
}
