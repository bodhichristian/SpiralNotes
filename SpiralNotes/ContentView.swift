//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            VStack {
               StickyContainerView()
            }
            .navigationTitle("SpiralNotes")
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    ContentView()
}

