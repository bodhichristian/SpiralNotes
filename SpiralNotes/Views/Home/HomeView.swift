//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var didTapAddButton: Bool = false
    @State private var isAddingNote: Bool = false
    @State private var isAddingNotebook: Bool = false
    @State private var isAddingSticky: Bool = false
    @State private var newObjectType: NewObjectType? = nil
    
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
                    StickyContainerView()
                        .frame(maxHeight: 250)
                    
                    NoteStack()
                }
                
                NewObjectToolbar(
                    newObjectType: $newObjectType
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
            .sheet(item: $newObjectType) { object in
                switch object {
                case .sticky:
                    AddStickyView()
                case .notebook:
                    AddNotebookView()
                case .note:
                    AddNoteView()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

