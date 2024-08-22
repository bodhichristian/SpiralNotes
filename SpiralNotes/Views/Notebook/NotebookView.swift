//
//  NotebookView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI
import SwiftData

struct NotebookView: View {
    let notebook: Notebook
    
    var body: some View {
        ZStack {
            NotebookShape(notebook: notebook)
            NotebookSubjectView(subject: notebook.subject)
            
        }
    }
}

#Preview {
    NotebookView(notebook: Notebook.mockData[0])
}
