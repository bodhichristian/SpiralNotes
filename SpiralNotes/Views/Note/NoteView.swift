//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI


struct NoteView: View {
    let note: Note
    
    @FocusState private var isEditingNote: Bool
    @State private var noteContent: String = ""
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            SNStyle.noteBackgroundGradient(for: note.color)
            .ignoresSafeArea()
            
            // Note Contents
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Last edit: \(note.dateCreated.formatted(date: .numeric, time: .shortened))")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        .padding(.leading)
                        
                    TextEditor(text: $noteContent)
                        .textEditorStyle(.plain)
                        .focused($isEditingNote)                    
                        .padding()
                }
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
        .navigationTitle(note.title)
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
        NoteView(note: Note.mockData[0])
    }
}
