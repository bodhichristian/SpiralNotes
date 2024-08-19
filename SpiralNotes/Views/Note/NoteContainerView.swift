//
//  NotesList.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NoteContainerView: View {
    var body: some View {
        List {
            Section {
                NavigationLink {
                    NotebookListView()
                } label: {
                    HStack {
                        Image(systemName: "books.vertical.fill")
                            .foregroundStyle(.orange.gradient)
                            .fontWeight(.bold)
                        Text("All Notebooks")
                    }
                }
            }
            
            Section("Recent Notebooks") {
                ForEach(Notebook.mockData) { notebook in
                    NavigationLink {
                        NotebookContentsView(notebook: notebook)
                    } label: {
                        HStack {
                            Image(systemName: "text.book.closed.fill")
                                .foregroundStyle(Color(colorName: notebook.color)!.gradient)
                                .fontWeight(.bold)
                            Text(notebook.subject)
                        }
                    }
                }
            }
            
            Section("Loose notes") {
                ForEach(Note.mockData) { note in
                    NavigationLink {
                        NoteView(note: note)
                    } label: {
                        HStack {
                            Image(systemName: "note.text")
                                .foregroundStyle(.purple.gradient)
                            Text(note.title ?? note.dateCreated.formatted(date: .numeric, time: .omitted))
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NoteContainerView()
}
