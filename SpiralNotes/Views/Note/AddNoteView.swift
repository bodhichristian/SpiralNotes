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
    @State private var noteContent: String = ""
    @State private var noteTitle: String = ""
    @State private var noteColor: String = "blue"
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            LinearGradient(
                colors: [
                    Color(colorName: noteColor)!.opacity(0.1),
                    Color(colorName: noteColor)!.opacity(0.1),
                    Color(colorName: noteColor)!.opacity(0.2),
                    Color(colorName: noteColor)!.opacity(0.3)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            // Note Contents
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    TextField("Note Title", text: $noteTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        .padding()
                    
                    TextEditor(text: $noteContent)
                        .textEditorStyle(.plain)
                        .focused($isEditingNote)
                        .padding(.horizontal)
                }
            }
            
            HStack(alignment: .bottom) {
                NotebookButton(symbolName: "trash.circle.fill") {
                    dismiss()
                }
                
                ColorSelectionCapsule(colorName: $noteColor)
                    
                
                NotebookButton(symbolName: "checkmark.circle.fill") {
                    
                }
            }
            .font(.largeTitle)
            .frame(maxWidth: .infinity)
            .padding(.bottom)
        }
        .onAppear {
            isEditingNote = true
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .frame(maxWidth: .infinity, maxHeight: 400)
        .padding(.horizontal)
    }
}

#Preview {
    NavigationStack {
        AddNoteView()
    }
}
