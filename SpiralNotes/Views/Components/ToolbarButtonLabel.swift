//
//  ToolbarButtonLabel.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct ToolbarButtonLabel: View {
    @Environment(\.colorScheme) var colorScheme
    
    let text: String
    let symbol: String
    
    private var textColor: Color {
        if colorScheme == .dark {
            return .black
        } else {
            return .white
        }
    }
    
    var body: some View {
        HStack {
            Text(text)
            
            Image(systemName: symbol)
        }
        .font(.caption)
        .fontWeight(.medium)
        .foregroundStyle(textColor)
        .padding(.vertical, 8)
        .padding(.horizontal)
        .background {
            Capsule()
        }
        .padding(.trailing, 4)
    }
}

#Preview {
    ToolbarButtonLabel(text: "Settings", symbol: "gear")
}
