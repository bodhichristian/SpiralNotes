//
//  AddButton.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct GradientButton: View {
    let iconName: String
    var body: some View {
        Button {
            
        } label: {
            Circle()
                .foregroundStyle(LinearGradient(colors: [.yellow, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 70)
                .padding(20)
                .overlay {
                    Image(systemName: iconName)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                        .padding(40)
                }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    GradientButton(iconName: "plus")
}