//
//  BrokenObservablesExampleApp.swift
//  BrokenObservablesExample
//
//  Created by Ryan McLeod on 8/23/23.
//

import SwiftUI

@main
struct BrokenObservablesExampleApp: App {
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    let debugViewBuilder = DebugViewBuilder()
    let brokenDebugViewBuilder = BrokenDebugViewBuilder()

    init() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            GameModel.debugInfo.time = CACurrentMediaTime()
            print("\(GameModel.debugInfo.time)")
        }
    }

    var body: some Scene {
        WindowGroup(id: "main") {
            ContentView()
                .onAppear {
                    openWindow(id: "working-debug")
                    openWindow(id: "broken-debug")
                }
        }

        WindowGroup(id: "working-debug") {
            debugViewBuilder.build()
        }
        
        WindowGroup(id: "broken-debug") {
            brokenDebugViewBuilder.build()
        }
    }
}
