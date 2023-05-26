//
//  Landmarks2App.swift
//  Landmarks2
//
//  Created by Sara Gaya on 5/22/23.
//

import SwiftUI

@main
struct Landmarks2App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
