//
//  NotebookListView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NotebookListView: View {
    @State private var isAddingNotebook = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 0) {
                    ForEach(Notebook.mockData()) { notebook in
                        NavigationLink {
                            NoteListView(notebook: notebook)
                        } label: {
                            NotebookView(notebook: notebook)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationTitle("Notebooks")
            .toolbar {
                ToolbarItem {
                    Button {
                        // sort notebooks
                    } label: {
                        SortButtonLabel()
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                ToolbarItem {
                    Button {
                        isAddingNotebook = true
                    } label: {
                        ToolbarButtonLabel(text: "Add", symbol: "plus.circle")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .sheet(isPresented: $isAddingNotebook) {
                AddNotebookView()
            }
        }
    }
}

#Preview {
    NotebookListView()
}
