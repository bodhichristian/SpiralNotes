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
    @Relationship var notes: [Note]?
    
    init(
        id: UUID,
        subject: String,
        notes: [Note]? = nil
    ) {
        self.id = id
        self.subject = subject
        self.notes = notes
    }
}
