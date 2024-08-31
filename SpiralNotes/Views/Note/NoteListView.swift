//
//  NotebookContentsView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NoteListView: View {
    let notebook: Notebook
    
    @State private var isAddingNote: Bool = false
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(notebook.notes) { note in
                    NavigationLink {
                        NoteView(notebook: notebook, note: note)
                    } label: {
                        NoteCardView(note: note, notebookColor: notebook.color)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .background {
            Rectangle()
                .foregroundStyle(
                    SNStyle.noteListBackgroundGradient(for: notebook.color))
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
                    isAddingNote = true
                } label: {
                    ToolbarButtonLabel(text: "Add", symbol: "plus.circle")
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .sheet(isPresented: $isAddingNote) {
            AddNoteView(notebook: notebook)
        }
    }
}

#Preview {
    NavigationStack{
        NoteListView(notebook: Notebook.mockData()[1])
    }
}
