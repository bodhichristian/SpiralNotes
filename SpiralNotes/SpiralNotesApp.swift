//
//  SpiralNotesApp.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI
import SwiftData

@main
struct SpiralNotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(
                    for: [
                        Sticky.self,
                        Notebook.self,
                        Note.self
                    ]
                )
        }
    }
}
