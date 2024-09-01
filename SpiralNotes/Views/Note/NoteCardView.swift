//
//  NotePreview.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NoteCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let note: Note
    let notebookColor: Color
    
    private var textColor: Color {
        if colorScheme == .dark{
            return .black
        } else {
            return .white
        }
    }
    
    var body: some View {
        ZStack {
            // Base layer
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(textColor)
                .shadow(radius: 2, y: 2)
            
            // Card Content
            VStack(alignment: .leading, spacing: 0) {
                // Header
                HStack {
                    Text(note.title.isEmpty
                         ? note.dateCreated.formatted(date: .numeric, time: .omitted)
                         : note.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis.circle")
                }
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background {
                    UnevenRoundedRectangle(
                        cornerRadii: RectangleCornerRadii(
                            topLeading: 10,
                            bottomLeading: 0,
                            bottomTrailing: 0,
                            topTrailing: 10
                        ),
                        style: .continuous
                    )
                    .foregroundStyle(notebookColor.opacity(0.5))
                }
                
                Text(note.content)
                    .lineLimit(5)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .frame(
                        maxWidth: .infinity,
                        minHeight: 120,
                        maxHeight: 200,
                        alignment: .topLeading
                    )
                    .background {
                        UnevenRoundedRectangle(
                            cornerRadii: RectangleCornerRadii(
                                topLeading: 0,
                                bottomLeading: 10,
                                bottomTrailing: 10,
                                topTrailing: 0
                            ),
                            style: .continuous
                        )
                        .foregroundStyle(
                            SNStyle.noteCardGradient(for:notebookColor)
                        )
                    }
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    VStack {
        NoteCardView(note: Note.mockData()[2], notebookColor: .orange)
        NoteCardView(note: Note.mockData()[1], notebookColor: .orange)
        NoteCardView(note: Note.mockData()[3], notebookColor: .orange)
    }
    .padding()
}
