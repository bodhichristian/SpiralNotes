//
//  Sticky.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation

@Observable
class Sticky: Identifiable {
    var id: UUID
    var dateCreated: Date
    var title: String
    var content: String
    var color: String
    
    init(
        id: UUID = UUID(),
        dateCreated: Foundation.Date = Date.now,
        title: String = "",
        content: String,
        color: String = "yellow"
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.color = color
    }
    
    static let mockData: [Sticky] = [
        Sticky(title: "Health", content: "Go to the gym"),
        Sticky(title: "Food", content: "Groceries"),
        Sticky(title: "School", content: "Sign permission slip"),
        Sticky(title: "Family", content: "Write mom a letter"),
        Sticky(title: "Family", content: "Birthday gift for Janice"),
        Sticky(title: "Tasks", content: "Remember this later.")
    ]
}
