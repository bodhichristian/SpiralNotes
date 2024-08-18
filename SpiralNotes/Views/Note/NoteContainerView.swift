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
                        Text(notebook.subject)
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
                ForEach(0..<5) { _ in
                    NavigationLink {
                        Text("Hi")
                    } label: {
                        HStack {
                            Image(systemName: "note.text")
                                .foregroundStyle(.purple.gradient)
                            Text("Random note")
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
