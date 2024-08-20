//
//  NotebookContentsView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NoteListView: View {
    let notebook: Notebook
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(notebook.notes ?? [Note]()){ note in
                    NavigationLink {
                        NoteView(note: note, notebook: notebook)
                    }label:{
                        NoteCardView(note: note, notebook: notebook)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .background {
            
            Rectangle()
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color(colorName: notebook.color)!.opacity(0.1),
                            Color(colorName: notebook.color)!.opacity(0.1),
                            Color(colorName: notebook.color)!.opacity(0.4),
                            Color(colorName: notebook.color)!.opacity(0.8)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .ignoresSafeArea()
            
        }
        .navigationTitle(notebook.subject)
        .toolbar {
            ToolbarItem {
                Button {
                    // Add new note in current notebook
                } label: {
                    SortButtonLabel()
                }
                .buttonStyle(PlainButtonStyle())
            }
            
            ToolbarItem {
                Button {
                    // Add new note in current notebook
                } label: {
                    ToolbarButtonLabel(text: "Add", symbol: "plus.circle")
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

#Preview {
    NavigationStack{
        NoteListView(notebook: Notebook.mockData[1])
    }
}
