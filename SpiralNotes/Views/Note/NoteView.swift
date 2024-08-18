//
//  NoteView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI


struct NoteView: View {
    let note: Note
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // Note Contents
            VStack(alignment: .leading) {
                Text(note.content ?? "")
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                    .padding()
            }
            
            GradientButton(iconName: "pencil")
        }
        .navigationTitle(note.title ?? "")
        
    }
}

#Preview {
    NavigationStack {
        NoteView(note: Note.mockData[0])
    }
}
