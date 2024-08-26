//
//  AddStickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/23/24.
//

import SwiftUI

struct AddStickyView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var newSticky = Sticky(title: "New Sticky", content: "Write here...", color: "yellow")
    
    @State private var stickyColor = "green"
    @State private var includingDate = true
    @State private var newStickyTitle = ""
    @State private var didEditSticky: Bool = false
    
    let offset: CGFloat = -30
    
    var body: some View {
        VStack(spacing: 40) {
            if !didEditSticky {
                Text("\(Text("Title").foregroundStyle(Color(colorName: stickyColor)!)) and \(Text("date").foregroundStyle(Color(colorName: stickyColor)!)) optional")
                    .font(.title3)
                    .fontWeight(.medium)
            }
            
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(colorName: stickyColor)!.gradient)
                    .frame(maxWidth: 300, maxHeight: 300)
                    .shadow(radius: 4, y: 4)
                    .overlay {
                        VStack(alignment: .leading, spacing: 4) {
                            TextField("New Sticky", text: $newStickyTitle)
                                .foregroundStyle(.black)
                                .font(.title)
                                .fontWeight(.semibold)
                                .onTapGesture {
                                    didEditSticky = true
                                }
                            
                            HStack {
                                if includingDate {
                                    Text(Date.now.formatted(date: .numeric, time: .omitted))
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.black)
                                        .padding(.bottom, 4)
                                }
                                
                                Toggle(includingDate ? "X Date" : "+ Date", isOn: $includingDate.animation())
                                    .toggleStyle(.button)
                                    .font(.caption.bold())
                                    .tint(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            .offset(y: includingDate ? 0 : offset)
                            
                            TextEditor(text: $newSticky.content)
                                .textEditorStyle(.plain)
                                .multilineTextAlignment(.leading)
                                .font(.subheadline)
                                .foregroundStyle(.black)
                                .padding(-4)
                                .offset(y: includingDate ? 0 : offset)
                                .onTapGesture {
                                    withAnimation {
                                        didEditSticky = true
                                    }
                                }
                        }
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
                    }
                
                HStack(alignment: .bottom) {
                    SymbolButton(symbolName: "trash.circle.fill") {
                        dismiss()
                    }
                    
                    ColorSelectionCapsule(colorName: $stickyColor)
                
                    SymbolButton(symbolName: "checkmark.circle.fill") {
                        // Save notebook
                    }
                }
                .font(.largeTitle)
                .padding(.bottom)
            }
            
            if !didEditSticky {
                Text("Stickiness \(Text("mandatory").foregroundStyle(Color(colorName: stickyColor)!))")
                    .font(.title3)
                    .fontWeight(.medium)
            }
        }
    }
}

#Preview {
    AddStickyView()
}
