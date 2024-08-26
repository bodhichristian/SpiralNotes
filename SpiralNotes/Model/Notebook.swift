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
    }
    
    static let mockData: [Notebook] = [
        Notebook(subject: "Social Studies", notes: Note.mockData, color: .yellow),
        Notebook(subject: "English", notes: Note.mockData, color: .blue),
        Notebook(subject: "Math", notes: Note.mockData, color: .red),
        Notebook(subject: "Science", notes: Note.mockData, color: .green)
    ]
}
