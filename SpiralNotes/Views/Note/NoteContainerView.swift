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
            
            Section("Pinned Notebooks") {
                ForEach(Array(Notebook.mockData.prefix(4))) { notebook in
                    NavigationLink {
                        NoteListView(notebook: notebook)
                    } label: {
                        HStack {
                            Image(systemName: "text.book.closed.fill")
                                .foregroundStyle(notebook.color.gradient)
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
                                .foregroundStyle(.gray.gradient)
                            // Display note date when no title exists
                            Text(note.title.isEmpty 
                                 ? note.dateCreated.formatted(date: .numeric, time: .omitted)
                                 : note.title)
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