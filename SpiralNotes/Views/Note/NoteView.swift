//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI


struct NoteView: View {
    let note: Note
    let notebook: Notebook
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            LinearGradient(
                colors: [
                    Color(colorName: notebook.color)!.opacity(0.1),
                    Color(colorName: notebook.color)!.opacity(0.1),
                    Color(colorName: notebook.color)!.opacity(0.2),
                    Color(colorName: notebook.color)!.opacity(0.3)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            // Note Contents
            ScrollView {
                VStack(alignment: .leading) {
                    Text(note.content ?? "")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .topLeading
                        )
                        .padding()
                }
            }
            
            Button {
                
            } label: {
                Circle()
                    .foregroundStyle(.black)
                    .frame(width: 70)
                    .padding(20)
                    .overlay {
                        Image(systemName: "pencil")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                            .padding(40)
                    }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .navigationTitle(note.title ?? "")
        
    }
}

#Preview {
    NavigationStack {
        NoteView(note: Note.mockData[0], notebook: Notebook.mockData[3])
    }
}
