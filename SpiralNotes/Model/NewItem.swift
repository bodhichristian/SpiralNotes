//
//  NewObjectType.swift
//  SpiralNotes
//
//  Created by christian on 8/25/24.
//

import Foundation

enum NewItem: Identifiable {
    case note,
         notebook,
         sticky
    
    var id: Int {
        hashValue
    }
}
