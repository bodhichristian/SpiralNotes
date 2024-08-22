//
//  ColorSelectionCapsule.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct ColorSelectionCapsule: View {
    @Binding var colorName: String
    @Environment(\.colorScheme) var colorScheme
    
    private let colorNames = [
        "red",
        "blue",
        "purple",
        "yellow",
        "orange",
        "green"
    ]

    var body: some View {
        ZStack{
            Capsule()
            HStack {
                ForEach(0..<6) { i in
                    Button {
                        colorName = colorNames[i]

                    }label:{
                        ZStack {
                            Circle()
                                .foregroundStyle(Color(colorName: colorNames[i])!)
                               
                            if colorNames[i] == colorName {
                                Circle()
                                .stroke(Color.primary, lineWidth: 3)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(width: 180, height: 36)
    }
}

#Preview {
    ColorSelectionCapsule(colorName: .constant(Notebook.mockData[3].color))
}
