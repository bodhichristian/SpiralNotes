//
//  Sticky.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftUI

@Observable
class Sticky: Identifiable {
    var id: UUID
    var dateCreated: Date
    var title: String
    var content: String
    var color: Color
    
    init(
        id: UUID = UUID(),
        dateCreated: Date = Date.now,
        title: String = "",
        content: String,
        color: Color
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.color = color
    }
    
    static func mockData() -> [Sticky] {
       return [
            Sticky(title: "Health", content: "Go to the gym", color: .yellow),
            Sticky(title: "Food", content: "Groceries", color: .orange),
            Sticky(title: "School", content: "Sign permission slip", color: .pink),
            Sticky(title: "Family", content: "Write mom a letter", color: .green),
            Sticky(title: "Family", content: "Birthday gift for Janice", color: .yellow),
            Sticky(title: "Tasks", content: "Remember this later.", color: .blue)
        ]
    }
}
