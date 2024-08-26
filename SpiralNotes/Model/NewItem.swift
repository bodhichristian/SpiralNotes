//
//  NewObjectType.swift
//  SpiralNotes
//
//  Created by christian on 8/25/24.
//

import Foundation

enum NewItem: Identifiable {
    case sticky, notebook, note
    
    var id: Int {
        hashValue
    }
}
