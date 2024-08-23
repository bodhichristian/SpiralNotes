//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var didTapAddButton: Bool = false
    @State private var isAddingNote: Bool = false
    @State private var isAddingNotebook: Bool = false
    @State private var isAddingSticky: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                // Header background
                Rectangle()
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .yellow.opacity(0.1),
                                .yellow
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        StickyContainerView()
                    }
                    .navigationTitle("SpiralNotes")
                    .frame(maxHeight: 270, alignment: .top)
                    
                    NoteStack()
                        .padding(.top, -20)
                }
                
                Rectangle()
                    .foregroundStyle(Color.primaryNegative(for: colorScheme).gradient)
                    .ignoresSafeArea()
                    .opacity(didTapAddButton ? 0.8 : 0.0)
                    .transition(.opacity)
                    .onTapGesture {
                        withAnimation(.smooth) {
                            didTapAddButton = false
                        }
                    }
                
                AddButtonView(didTapAddButton: $didTapAddButton, isAddingNotebook: $isAddingNotebook)
            }
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        Text("Settings View")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                    } label: {
                        Image(systemName: "gear")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .sheet(isPresented: $isAddingNotebook) {
                    AddNotebookView()
            }

        }
    }
}

#Preview {
    HomeView()
}

