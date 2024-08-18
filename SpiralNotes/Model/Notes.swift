//
//  Notes.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftData

@Model
final class Note {
    var id: UUID
    var dateCreated: Date
    var title: String?
    var content: String?
    @Relationship var notebook: [Notebook]?
    
    init(
        id: UUID,
        dateCreated: Date,
        title: String? = nil,
        content: String? = nil,
        notebook: [Notebook]? = nil
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.notebook = notebook
    }
}
