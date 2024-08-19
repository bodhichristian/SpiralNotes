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
    let notebook: Notebook
    
    private var textColor: Color {
        if colorScheme == .dark{
            return .black
        } else {
            return .white
        }
    }
    
    private var gradient: LinearGradient {
        let notebookColor = Color(colorName: note.notebook?.color ?? "blue")!
        
        let colors: [Color] = [
            notebookColor.opacity(1.0),
            notebookColor.opacity(0.0)
        ]
        
        return LinearGradient(
            colors: colors,
            startPoint: .top,
            endPoint: .bottom
        )
        
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(note.title ?? note.dateCreated.formatted(date: .numeric, time: .omitted))
                    .font(.title2)
                    .fontWeight(.bold)
                    .shadow(radius: colorScheme == .light ? 1 : 0)
                
                
                Spacer()
                
                Image(systemName: "ellipsis.circle")
            }
            .foregroundStyle(textColor)
            .padding()
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
                .foregroundStyle(Color(colorName: notebook.color)!.gradient)
            }

            Text(note.content ?? "")
                .padding(8)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topLeading)
 
    }
}

#Preview {
    VStack {
        NoteCardView(note: Note.mockData[2], notebook: Notebook.mockData[0])
        NoteCardView(note: Note.mockData[1], notebook: Notebook.mockData[1])
        NoteCardView(note: Note.mockData[3], notebook: Notebook.mockData[2])
    }
}
