//
//  AddStickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/23/24.
//

import SwiftUI

struct AddStickyView: View {
    @State private var sticky = Sticky(content: "New sticky")
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(.yellow.gradient)
            .frame(maxWidth: 320, maxHeight: 320)
            .shadow(radius: 4, y: 4)
            .overlay {
                VStack(alignment: .leading) {
                    TextField("Sticky Title", text: $sticky.content)
                        .foregroundStyle(.black)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(Date.now.formatted(date: .numeric, time: .omitted))
                        .fontWeight(.medium)
                        .foregroundStyle(.purple)
                        .padding(.bottom, 4)
                    
                    TextEditor(text: $sticky.content)
                        .textEditorStyle(.plain)
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .padding(-4)
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .padding()
            }
    }
}

#Preview {
    AddStickyView()
}
