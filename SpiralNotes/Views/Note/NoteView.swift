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
    
    @FocusState private var isEditingNote: Bool
    @State private var noteContent: String = ""
    
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
                    TextEditor(text: $noteContent)
                        .onAppear {
                            noteContent = note.content ?? ""
                        }
                        .textEditorStyle(.plain)
                        .focused($isEditingNote)
                }
                .padding()
            }
            
            Button {
                withAnimation {
                    isEditingNote.toggle()
                }
            } label: {
                Circle()
                    .foregroundStyle(.black)
                    .frame(width: 70)
                    .padding(20)
                    .overlay {
                        Image(systemName: isEditingNote ? "checkmark" : "pencil")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                            .padding(40)
                            
                    }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .navigationTitle(note.title ?? "")
        .toolbar {
            ToolbarItem {
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

#Preview {
    NavigationStack {
        NoteView(note: Note.mockData[0], notebook: Notebook.mockData[3])
    }
}
