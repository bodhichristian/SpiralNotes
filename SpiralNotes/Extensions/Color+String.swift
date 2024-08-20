//
//  Color+String.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftUI

extension Color {
    init?(colorName: String) {
        let color = colorName.lowercased()
        
        switch color {
        case "red":
            self = .red.opacity(0.75)
        case "orange":
            self = .orange.opacity(0.75)
        case "yellow":
            self = .yellow.opacity(0.75)
        case "green":
            self = .green.opacity(0.75)
        case "indigo":
            self = .indigo.opacity(0.75)
        case "purple":
            self = .purple.opacity(0.75)
        case "cyan":
            self = .cyan.opacity(0.75)
        case "mint":
            self = .mint.opacity(0.75)
        case "teal":
            self = .teal.opacity(0.75)
        case "brown":
            self = .brown.opacity(0.75)
        case "gray":
            self = .gray.opacity(0.75)
        default:
            self = .blue.opacity(0.75)
        }
    }
}


