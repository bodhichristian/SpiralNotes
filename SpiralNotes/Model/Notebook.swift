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
