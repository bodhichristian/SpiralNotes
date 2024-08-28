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
                ForEach(notebook.notes){ note in
                    NavigationLink {
                        NoteView(note: note)
                    }label:{
                        NoteCardView(note: note)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .background {
            Rectangle()
                .foregroundStyle(
                    SNStyle.noteListBackgroundGradient(for: notebook))
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
