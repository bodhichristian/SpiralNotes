//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                // Header background
                Rectangle()
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .yellow.opacity(0.1),
                                .yellow
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        StickyContainerView()
                    }
                    .navigationTitle("SpiralNotes")
                    .frame(maxHeight: 270, alignment: .top)
                    
                    NoteStack()
                        .padding(.top, -20)
                }
                GradientButton(iconName: "plus")
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        // Open SettingsView
                    } label: {
                        Image(systemName: "gear")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(try! ModelContainer(for: Note.self))
}

