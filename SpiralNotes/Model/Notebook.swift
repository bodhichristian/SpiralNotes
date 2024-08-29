//
//  Notebook.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftUI

@Observable
class Notebook: Identifiable {
    var id: UUID
    var subject: String
    var color: Color
    var notes: [Note]
    var pinned: Bool
    
    init(
        id: UUID = UUID(),
        subject: String,
        notes: [Note] = [],
        color: Color = .purple
    ) {
        self.id = id
        self.subject = subject
        self.notes = notes
        self.color = color
        self.pinned = false
    }
    
    static let mockData: [Notebook] = [
        Notebook(subject: "Math", notes: Note.mockData, color: .red),
        Notebook(subject: "Science", notes: Note.mockData, color: .green),
        Notebook(subject: "History", notes: Note.mockData, color: .yellow),
        Notebook(subject: "Literature", notes: Note.mockData, color: .blue),
        Notebook(subject: "Art", notes: Note.mockData, color: .purple),
        Notebook(subject: "Music", notes: Note.mockData, color: .orange),
        Notebook(subject: "Computer Science", notes: Note.mockData, color: .red),
        Notebook(subject: "Economics", notes: Note.mockData, color: .yellow)
    ]
}
