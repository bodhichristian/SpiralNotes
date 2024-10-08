//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/23/24.
//

import SwiftUI


struct AddNoteView: View {
    var notebook: Notebook? = nil
    
    @Environment(\.dismiss) private var dismiss
    @FocusState private var isEditingNote: Bool
    @State private var didEditNote: Bool = false
    @State private var newNoteTitle: String = ""
    @State private var newNoteContent: String = ""
    @State private var newNoteColor: Color = SNStyle.notebookColors.randomElement()!
    
    var body: some View {
        ZStack {
            Group {
                if let notebook {
                    SNStyle.noteBackgroundGradient(for: notebook.color)
                }
                else {
                    SNStyle.noteBackgroundGradient(for: newNoteColor)
                }
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                TextField("Note Title", text: $newNoteTitle)
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
                
                TextEditor(text: $newNoteContent)
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
                Spacer()
                
                SymbolButton(symbolName: "checkmark.circle.fill") {
                    // save note
                }
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottom
            )
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        AddNoteView()
    }
}
