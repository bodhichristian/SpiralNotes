//
//  AddNotebookView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct AddNotebookView: View {
    
    @State private var newNoteBook: Notebook = Notebook(subject: "Subject")
    
    var body: some View {
        ZStack {
            NotebookShape(notebook: newNoteBook)
            
        }
    }
}

#Preview {
    AddNotebookView()
}
