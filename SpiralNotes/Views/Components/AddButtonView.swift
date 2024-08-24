//
//  AddButton.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct AddButtonView: View {
    @Binding var didTapAddButton: Bool
    @Binding var isAddingNote: Bool
    @Binding var isAddingNotebook: Bool
    @Binding var isAddingSticky: Bool
    
    
    var body: some View {
        ZStack { // Base Shape
            Capsule()
                .foregroundStyle(
                    LinearGradient(
                        colors: [.yellow, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .overlay {
                    Capsule()
                        .stroke(lineWidth: 3)
                        .foregroundStyle(LinearGradient(
                            colors: [.yellow, .purple],
                            startPoint: .topTrailing,
                            endPoint: .bottomLeading
                        ))
                        .opacity(didTapAddButton ? 1.0 :  0.0)
                }
                .frame(maxWidth: didTapAddButton ? .infinity : 60 , maxHeight: 60)
            
            HStack { // Button Row
                if didTapAddButton {
                    Text("New")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .transition(
                            .asymmetric(
                                insertion: .push(from: .trailing).combined(with: .opacity),
                                removal: .push(from: .leading).combined(with: .opacity)
                            )
                        )
                    
                    HStack(spacing: 20) {
                        Button {
                            withAnimation {
                                isAddingSticky = true
                                didTapAddButton = false
                            }
                        } label: {
                            Image(systemName: "square.on.square")
                        }
                        
                        Button {
                            withAnimation {
                                isAddingNotebook = true
                                didTapAddButton = false
                            }
                        } label: {
                            Image(systemName: "text.book.closed")
                        }
                        
                        Button {
                            withAnimation {
                                isAddingNote = true
                                didTapAddButton = false
                            }
                        } label: {
                            Image(systemName: "note.text")
                        }
                    }
                    .foregroundStyle(.white)
                    .shadow(radius: 2)
                    .frame(maxWidth: .infinity)
                    .transition(
                        AsymmetricTransition(
                            insertion: .push(from: .top),
                            removal: .blurReplace
                        )
                    )
                }
                
                Button {
                    withAnimation(.smooth){
                        didTapAddButton.toggle()
                    }
                } label: {
                    Image(systemName: "plus")
                        .rotationEffect(didTapAddButton ? .degrees(225) : .zero)
                        .foregroundStyle(didTapAddButton ? .black : .white)
                }
            }
            .font(.title)
            .fontWeight(.medium)
            .frame(alignment: .trailing)
            .padding(.horizontal, 20)
            
        }
        .padding(20)
    }
}

#Preview {
    AddButtonView(didTapAddButton: .constant(false), isAddingNote: .constant(false), isAddingNotebook: .constant(false), isAddingSticky: .constant(false))
}
