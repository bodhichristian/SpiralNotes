//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var newItem: NewItem? = nil
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        .yellow.opacity(0.1),
                        .yellow
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack {
                    StickyContainerView()
                        .frame(maxHeight: 250)
                    
                    NoteContainerView()
                }
                
                NewItemToolbar(
                    newObjectType: $newItem
                )
            }
            .navigationTitle("SpiralNotes")
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        Text("SettingsView")
                    } label: {
                        Image(systemName: "gear")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .sheet(item: $newItem) { item in
                switch item {
                case .sticky:
                    AddStickyView()
                case .notebook:
                    AddNotebookView()
                default:
                    AddNoteView()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
