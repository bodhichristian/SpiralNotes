//
//  AddNotebookSubjectView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct AddNotebookSubjectView: View {
    @Binding var subject: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Text("SUBJECT")
                .font(.caption2)
                .fontWeight(.black)
            
            TextField("Subject", text: $subject)
                .font(.system(size: 36))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300)
                
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ZStack {
        NotebookShape(notebook: Notebook.mockData[2])
        AddNotebookSubjectView(subject: .constant("Ceasaghfahfsdfhzbcmf"))
    }
}
