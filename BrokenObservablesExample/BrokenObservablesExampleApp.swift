//
//  BrokenObservablesExampleApp.swift
//  BrokenObservablesExample
//
//  Created by Ryan McLeod on 8/23/23.
//

import SwiftUI

@main
struct BrokenObservablesExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
