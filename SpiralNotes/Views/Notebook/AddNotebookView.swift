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

                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "trash.circle.fill")
                    }
                    
                    ColorSelectionCapsule(colorName: $colorName)

                    Button {
                        // save notebook to swiftdata
                    } label:{
                        Image(systemName: "checkmark.circle.fill")
                    }
                }
                .font(.largeTitle)
                .foregroundStyle(Color.primaryNegative(for: colorScheme))
                .padding(.bottom, 38)
            }
            AddNotebookSubjectView(subject: $subject)
            
            
        }
    }
}

#Preview {
    AddNotebookView()
}
