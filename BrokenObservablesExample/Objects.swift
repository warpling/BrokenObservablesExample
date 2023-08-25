//
//  Objects.swift
//  BrokenObservablesExample
//
//  Created by Ryan McLeod on 8/23/23.
//

import Foundation

class GameModel {
    static let debugInfo = DirectlyObservableObject()
}

class DirectlyObservableObject: ObservableObject {
    @Published var time: Double = 0
}

//protocol Debuggable: ObservableObject {
//    var time: Double { get set }
//}
//
//class DebugModel: Debuggable {
//    @Published var time: Double = 0
//}
