//
//  NotebookListView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NotebookListView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 0) {
                    ForEach(Notebook.mockData) { notebook in
                        NavigationLink {
                            Text("Notebook detail")
                        } label: {
                            NotebookView(notebook: notebook)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationTitle("Notebooks")
        }
    }
}

#Preview {
    NotebookListView()
}
