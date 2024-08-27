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
    @State private var selectedColor: Color = SNStyle.noteBookColors.randomElement()!
    @State private var didEditSubject: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            if !didEditSubject {
                Text("Select Subject to \(Text("rename").foregroundStyle(selectedColor))")
                    .font(.title3)
                    .fontWeight(.medium)
                    
            }
            ZStack {
                ZStack(alignment: .bottom) {
                    NotebookShape(color: selectedColor)
                        .overlay {
                         
                        }
                    HStack(alignment: .bottom) {
                        SymbolButton(symbolName: "trash.circle.fill") {
                            dismiss()
                        }
                        
                        ColorSelectionCapsule(selectedColor: $selectedColor)

                        SymbolButton(symbolName: "checkmark.circle.fill") {
                            
                        }
                    }
                    .font(.largeTitle)
                    .padding(.bottom, 38)
                }
                
                AddNotebookSubjectView(subject: $subject)
                    .onTapGesture {
                        didEditSubject = true
                    }
            }
            
            if !didEditSubject {
                Text("Choose a \(Text("color").foregroundStyle(selectedColor)) that fits")
                    .font(.title3)
                    .fontWeight(.medium)
                    
            }
        }
        //.frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AddNotebookView()
}




