//
//  ColorSelectionCapsule.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct ColorSelectionCapsule: View {
    @Binding var selectedColor: Color
    @Environment(\.colorScheme) var colorScheme
    @Namespace private var namespace
    
    let colors: [Color] = [
        .red, .yellow, .orange, .green, .blue, .purple
    ]
    
    var body: some View {
        ZStack {
            Capsule()
                .foregroundStyle(Color.primaryNegative(for: colorScheme))
            HStack {
                ForEach(0..<6) { i in
                    Button {
                        withAnimation(.easeInOut(duration: 0.2)){
                            selectedColor = colors[i]
                        }
                    } label:{
                        ZStack {
                            Circle()
                                .foregroundStyle(colors[i])
                            
                            if selectedColor == colors[i] {
                                Circle()
                                    .stroke(Color.primary, lineWidth: 2)
                                    .matchedGeometryEffect(id: "selectedColor", in: namespace)
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
    ColorSelectionCapsule(selectedColor: .constant(.blue))
}
