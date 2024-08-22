//
//  AddNotebookView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct AddNotebookView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss

    @State private var subject: String = "Subject"
    @State private var colorName: String = "purple"

    var body: some View {
        ZStack {
            ZStack(alignment: .bottom) {
                NotebookShape(colorName: colorName)
                    .overlay {
                     
                    }
                HStack(alignment: .bottom) {
                    NotebookButton(symbolName: "trash.circle.fill") {
                        dismiss()
                    }
                    
                    ColorSelectionCapsule(colorName: $colorName)

                    NotebookButton(symbolName: "checkmark.circle.fill") {
                        
                    }
                }
                .font(.largeTitle)
                .padding(.bottom, 38)
            }
            
            AddNotebookSubjectView(subject: $subject)
        }
    }
}

#Preview {
    AddNotebookView()
}




