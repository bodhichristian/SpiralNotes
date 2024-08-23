//
//  ContentView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct HomeView: View {
    @State private var didTapAddButton: Bool = false
    
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
                    .foregroundStyle(.black.gradient)
                        .ignoresSafeArea()
                        .opacity(didTapAddButton ? 0.8 : 0.0)
                        .transition(.opacity)
                        .onTapGesture {
                            withAnimation(.smooth) {
                                didTapAddButton = false
                            }
                        }
                
                AddButtonView(didTapAddButton: $didTapAddButton)
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        // Open SettingsView
                    } label: {
                        Image(systemName: "gear")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

