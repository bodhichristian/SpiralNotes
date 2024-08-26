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
                .frame(maxWidth: 300)
                .scrollDismissesKeyboard(.interactively)
                .multilineTextAlignment(.center)
        }
        .foregroundStyle(.black)
        .navigationTitle("New Notebook")
    }
}

#Preview {
    ZStack {
        NotebookShape(colorName: "blue")
        AddNotebookSubjectView(subject: .constant("History"))
    }
}
