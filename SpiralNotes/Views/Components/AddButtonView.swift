//
//  AddButton.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct AddButtonView: View {
    @Binding var didTapAddButton: Bool
    
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
                .frame(maxWidth: didTapAddButton ? .infinity : 60 , maxHeight: 60)
                .overlay {
                    if didTapAddButton {
                        Capsule()
                            .stroke(lineWidth: 3)
                            .foregroundStyle(LinearGradient(
                                colors: [.yellow, .purple],
                                startPoint: .topTrailing,
                                endPoint: .bottomLeading
                            ))
                            .transition(.blurReplace)
                        
                    }
                }
            
            
            HStack { // Button Row
                
                if didTapAddButton {
                    Text("New")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .transition(.blurReplace)
                    
                    HStack(spacing: 20) {
                        Button {
                            // add sticky
                        } label: {
                            Image(systemName: "square.on.square")
                        }
                        
                        Button {
                            // add notebook
                        } label: {
                            Image(systemName: "text.book.closed")
                        }
                        
                        Button {
                            // add note
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
    AddButtonView(didTapAddButton: .constant(false))
}
