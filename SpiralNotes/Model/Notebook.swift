//
//  Notebook.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftData

@Model
final class Notebook {
    var id: UUID
    var subject: String
    var color: String
    @Relationship var notes: [Note]?
    
    init(
        id: UUID = UUID(),
        subject: String,
        notes: [Note]? = nil,
        color: String = "yellow"
    ) {
        self.id = id
        self.subject = subject
        self.notes = notes
        self.color = color
    }
    
    static let mockData: [Notebook] = [
       Notebook(subject: "Social Studies", color: "yellow"),
       Notebook(subject: "English", color: "blue"),
       Notebook(subject: "Math", color: "red"),
       Notebook(subject: "Science", color: "green")
    ]
}
