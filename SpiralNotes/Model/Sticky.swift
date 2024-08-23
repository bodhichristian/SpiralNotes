//
//  Sticky.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation

class Sticky: Identifiable {
    var id: UUID
    var dateCreated: Date
    var title: String?
    var content: String
    var color: String
    
    init(
        id: UUID = UUID(),
        dateCreated: Foundation.Date = Date.now,
        title: String? = nil,
        content: String,
        color: String = "yellow"
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.color = color
    }
}
