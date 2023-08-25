//
//  ContentView.swift
//  BrokenObservablesExample
//
//  Created by Ryan McLeod on 8/23/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @ObservedObject var debugInfo: DirectlyObservableObject = GameModel.debugInfo
    
    var body: some View {
        Text("ContentView")
        Text("This uses a View to reference the global observable")
        Text("\(debugInfo.time)")
            .font(.largeTitle)
    }
}


class DebugViewBuilder {
        
    struct DebugView: View {
        @ObservedObject var debugInfo: DirectlyObservableObject

        var body: some View {
            Text("Working Debug")
            Text("This uses a View inside a ViewBuilder to reference the global observable")
            Text("\(debugInfo.time)")
                .font(.largeTitle)
        }
    }
    
    var debugView: DebugView {
        DebugView(debugInfo: GameModel.debugInfo)
    }

    @ViewBuilder func build() -> some View {
        debugView
    }
}

class BrokenDebugViewBuilder {
        
    @ObservedObject var debugInfo = GameModel.debugInfo

    @ViewBuilder func build() -> some View {
        Text("Broken Debug")
        Text("This uses a ViewBuilder to reference the global observable")
        Text("\(debugInfo.time)")
            .font(.largeTitle)
    }
}
