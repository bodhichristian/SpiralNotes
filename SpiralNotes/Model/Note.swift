//
//  Notes.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftUI

@Observable
class Note: Identifiable {
    var id: UUID
    var dateCreated: Date
    var title: String
    var content: String
    var notebook: Notebook?
    var color: Color
    
    init(
        id: UUID = UUID(),
        dateCreated: Date = .now,
        title: String = "",
        content: String = "",
        notebook: Notebook? = nil,
        color: Color
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.notebook = notebook
        self.color = color
    }
    static let mockData: [Note] = [
        Note(title: "Algebra Formulas", content: "Quadratic equation: ax^2 + bx + c = 0", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Periodic Table", content: "First 20 elements and their properties", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "French Revolution", content: "Key events and dates from 1789 to 1799", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Shakespeare's Sonnets", content: "Analysis of Sonnet 18", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Color Theory", content: "Primary, secondary, and tertiary colors", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Classical Composers", content: "Mozart, Beethoven, Bach, and their major works", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Basketball Rules", content: "Basic rules and scoring system", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Python Basics", content: "Variables, data types, and control structures", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Spanish Vocabulary", content: "Common phrases and greetings", color: SNStyle.notebookColors.randomElement()!),
        Note(title: "Supply and Demand", content: "Factors affecting market equilibrium", color: SNStyle.notebookColors.randomElement()!)
    ]
}


