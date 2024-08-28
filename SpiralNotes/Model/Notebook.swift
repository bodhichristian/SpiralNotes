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
        Notebook(subject: "Math", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Science", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "History", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Literature", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Art", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Music", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Physical Education", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Computer Science", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Languages", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!),
        Notebook(subject: "Economics", notes: Note.mockData, color: SNStyle.notebookColors.randomElement()!)
    ]
}
