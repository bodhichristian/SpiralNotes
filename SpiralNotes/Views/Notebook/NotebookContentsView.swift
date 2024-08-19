//
//  NotebookContentsView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NotebookContentsView: View {
    let notebook: Notebook
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(notebook.notes ?? [Note]()){ note in
                    NoteCardView(note: note, notebook: notebook)
                }
            }
        }
        .background {
            
            Rectangle()
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color(colorName: notebook.color)!.opacity(0.1),
                            Color(colorName: notebook.color)!.opacity(1.0)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .ignoresSafeArea()
            
        }
        .navigationTitle(notebook.subject)
    }
}

#Preview {
    NavigationStack{
        NotebookContentsView(notebook: Notebook.mockData[0])
    }
}
