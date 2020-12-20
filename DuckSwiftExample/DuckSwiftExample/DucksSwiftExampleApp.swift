//
//  DucksSwiftExampleApp.swift
//  DucksSwiftExample
//
//  Created by Piotr Prokopowicz on 02/10/2020.
//

import SwiftUI
import DuckSwift

private let store = Store(reducer: reducer, state: AppState())

@main
struct DucksSwiftExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
