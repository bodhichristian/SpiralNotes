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
    
    static func mockData() -> [Notebook] {
        var notebooks: [Notebook] = []
        let notes = Note.mockData()
        let subjects = [
            "Math",
            "Science",
            "History",
            "Literature",
            "Art",
            "Music",
            "Computer Science",
            "Economics"
        ]
        
        for subject in subjects {
            notebooks.append(
                Notebook(
                    subject: subject,
                    notes: notes,
                    color: SNStyle.notebookColors.randomElement()!
                )
            )
        }
        return notebooks
    }
}




let n: [Notebook] = [
    Notebook(subject: "History", color: .red),
    Notebook(subject: "Math", color: .blue),
    Notebook(subject: "Literature", color: .yellow),
    Notebook(subject: "Science", color: .green),
    Notebook(subject: "Economics", color: .orange),
    Notebook(subject: "Computer Science", color: .purple),
    
]
