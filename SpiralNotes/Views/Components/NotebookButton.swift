//
//  LabeledButtonView.swift
//  SpiralNotes
//
//  Created by christian on 8/22/24.
//

import SwiftUI

struct NotebookButton: View {
    @Environment(\.colorScheme) var colorScheme
    
    let symbolName: String
    let action: () -> ()
    
    var body: some View {
        
        Button {
            action()
        } label: {
            Image(systemName: symbolName)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.primary, Color.primaryNegative(for: colorScheme))
        }
        .buttonStyle(PlainButtonStyle())
    }
    
}

#Preview {
    NotebookButton(symbolName: "trash.circle.fill") {
        // do something
    }
}
