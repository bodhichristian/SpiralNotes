//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI


struct NoteView: View {
    var notebook: Notebook? = nil
    
    @Bindable var note: Note
    @FocusState private var isEditingNote: Bool
    @State private var noteContent: String = ""
    
    var body: some View {
        ZStack {
            
            Group {
                if let notebook {
                    SNStyle.noteBackgroundGradient(for: notebook.color)
                } else {
                    SNStyle.noteBackgroundGradient(for: note.color)
                }
            }
            .ignoresSafeArea()
            
            // Note Contents
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Last edit: \(note.dateCreated.formatted(date: .numeric, time: .shortened))")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        
                    Text(note.content)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    
                    // MARK: TextEditor will be used when SwiftData is implemented
                    // for tutorial part 1 purposes, objects will not be manipulated
//                    TextEditor(text: $note.content)
//                        .textEditorStyle(.plain)
//                        .focused($isEditingNote)
//                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
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
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
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
        NoteView(note: Note.mockData[1])
    }
}
