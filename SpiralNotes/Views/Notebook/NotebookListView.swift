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
                    ForEach(0..<7) { _ in
                        NavigationLink {
                            Text("Notebook detail")
                        } label: {
                            NotebookView()
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
