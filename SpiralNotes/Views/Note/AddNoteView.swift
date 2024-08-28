//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/23/24.
//

import SwiftUI


struct AddNoteView: View {
    @Environment(\.dismiss) private var dismiss
    @FocusState private var isEditingNote: Bool
    @State private var noteColor: Color = .blue
    @State private var didEditNote: Bool = false
    @State private var newNote: Note = Note()
    
    var body: some View {
        ZStack {
            SNStyle.noteBackgroundGradient(for: newNote)
            .ignoresSafeArea()
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        TextField("Note Title", text: $newNote.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                            .padding(.leading)
                            .padding(.top, 40)
                            .onTapGesture {
                                withAnimation {
                                    didEditNote = true
                                }
                            }
                        
                        TextEditor(text: $newNote.content)
                            .textEditorStyle(.plain)
                            .focused($isEditingNote)
                            .padding(.horizontal)
                            .onAppear {
                                isEditingNote = true
                            }
                            .onTapGesture {
                                withAnimation {
                                    didEditNote = true
                                }
                            }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    
                    HStack(alignment: .bottom) {
                        SymbolButton(symbolName: "trash.circle.fill") {
                            dismiss()
                        }
                        
                        ColorSelectionCapsule(selectedColor: $noteColor)
                        
                        SymbolButton(symbolName: "checkmark.circle.fill") {
                            // save note
                        }
                    }
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom)
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddNoteView()
    }
}
