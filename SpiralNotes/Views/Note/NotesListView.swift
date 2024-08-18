//
//  NotesList.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NotesListView: View {
    var body: some View {
        List {
            Section {
                NavigationLink {
                    NotebookListView()
                } label: {
                    HStack {
                        Image(systemName: "books.vertical")
                            .foregroundStyle(.orange.gradient)
                            .fontWeight(.bold)
                        Text("All Notebooks")
                    }
                }
            }
            
            Section("Recent Notebooks") {
                ForEach(0..<4) { _ in
                    NavigationLink {
                        Text("Text")
                    } label: {
                        HStack {
                            Image(systemName: "text.book.closed")
                                .foregroundStyle(.orange.gradient)
                                .fontWeight(.bold)
                            Text("Subject")
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
    NotesListView()
}
