//
//  AddButton.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NewObjectToolbar: View {
    @Binding var newObjectType: NewObjectType?
    @Environment(\.colorScheme) var colorScheme
    @State private var expanded: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Rectangle()
                .foregroundStyle(Color.primaryNegative(for: colorScheme).gradient)
                .ignoresSafeArea()
                .frame(maxHeight: .infinity)
                .opacity(expanded ? 0.8 : 0.0)
                .transition(.opacity)
                .onTapGesture {
                    withAnimation(.smooth) {
                        expanded = false
                    }
                }
            
            ZStack {
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
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.yellow, .purple],
                                    startPoint: .topTrailing,
                                    endPoint: .bottomLeading
                                )
                            )
                            .opacity(expanded ? 1.0 :  0.0)
                    }
                    .frame(maxWidth: expanded ? .infinity : 60 , maxHeight: 60)
                    .padding(20)
                
                HStack { // Button Row
                    if expanded {
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
                                    newObjectType = .sticky
                                    expanded = false
                                }
                            } label: {
                                Image(systemName: "square.on.square")
                            }
                            
                            Button {
                                withAnimation {
                                    newObjectType = .notebook
                                    expanded = false
                                }
                            } label: {
                                Image(systemName: "text.book.closed")
                            }
                            
                            Button {
                                withAnimation {
                                    newObjectType = .note
                                    expanded = false
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
                            expanded.toggle()
                        }
                    } label: {
                        Image(systemName: "plus")
                            .rotationEffect(expanded ? .degrees(225) : .zero)
                            .foregroundStyle(expanded ? .black : .white)
                    }
                }
                .font(.title)
                .fontWeight(.medium)
                .frame(alignment: .trailing)
                .padding(40)
                
            }
        }
    }
}

#Preview {
    NewObjectToolbar(
        newObjectType: .constant(.note)
    )
}
