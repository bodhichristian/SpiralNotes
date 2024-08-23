//
//  AddStickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/23/24.
//

import SwiftUI

struct AddStickyView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var newSticky = Sticky(title: "New Sticky", content: "Write here.", color: "yellow")
    
    @State private var stickyColor = "yellow"
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(colorName: stickyColor)!.gradient)
                    .frame(maxWidth: 320, maxHeight: 320)
                    .shadow(radius: 4, y: 4)
                    .overlay {
                        VStack(alignment: .leading, spacing: 4) {
                            TextField("Sticky Title", text: $newSticky.title)
                                .foregroundStyle(.black)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text(Date.now.formatted(date: .numeric, time: .omitted))
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .padding(.bottom, 4)
                            
                            TextEditor(text: $newSticky.content)
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
                HStack(alignment: .bottom) {
                    NotebookButton(symbolName: "trash.circle.fill") {
                        dismiss()
                    }
                    
                    ColorSelectionCapsule(colorName: $stickyColor)
                    
                    NotebookButton(symbolName: "checkmark.circle.fill") {
                        
                    }
                }
                .font(.largeTitle)
                .padding(.bottom)
            }
            
        }
    }
}

#Preview {
    AddStickyView()
}
