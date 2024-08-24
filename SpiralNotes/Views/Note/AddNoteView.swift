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
    @State private var didEditNote: Bool = false
    
    var body: some View {
        ZStack {
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
            VStack {
                ZStack {
                    // Note Contents
                    
                        VStack(alignment: .leading, spacing: 0) {
                            TextField("Note Title", text: $noteTitle)
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
                            
                            TextEditor(text: $noteContent)
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
                        NotebookButton(symbolName: "trash.circle.fill") {
                            dismiss()
                        }
                        
                        ColorSelectionCapsule(colorName: $noteColor)
                            
                        
                        NotebookButton(symbolName: "checkmark.circle.fill") {
                            
                        }
                    }
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom)
                }
                //.clipShape(RoundedRectangle(cornerRadius: 10))
                //.frame(maxWidth: .infinity, maxHeight: 400)
                .padding(.horizontal)
                
//                if !didEditNote{
//                    Text("\(Text("Thoughts").foregroundStyle(Color(colorName: noteColor)!)): e n d l e s s")
//                        .font(.title3)
//                        .fontWeight(.medium)
//                }
            }
            
        }
        
    }
}

#Preview {
    NavigationStack {
        AddNoteView()
    }
}