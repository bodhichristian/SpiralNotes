//
//  AddItemToolbar.swift
//  SpiralNotes
//
//  Created by christian on 8/29/24.
//

import SwiftUI

struct AddItemToolbar: View {
    @Binding var selectedColor: Color
    var colorOptions: [Color]

    let save: () -> ()
    let dismiss: () -> ()

    var body: some View {
        HStack {
            SymbolButton(symbolName: "trash.circle.fill") {
                dismiss()
            }
            
            ColorSelectionCapsule(selectedColor: $selectedColor, colors: colorOptions)
                .frame(maxWidth: .infinity)
            
            SymbolButton(symbolName: "checkmark.circle.fill") {
                // Save notebook
            }
        }
        .font(.largeTitle)
        //.frame(maxHeight: .infinity, alignment: .bottom)
        .padding()
    }
}

#Preview {
    AddItemToolbar(
        selectedColor: .constant(.blue),
        colorOptions: []
    ) {
        // dismiss
    } dismiss: {
        // dismiss
    }

}
