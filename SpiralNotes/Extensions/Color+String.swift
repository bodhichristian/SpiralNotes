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
            self = .red.opacity(0.9)
        case "orange":
            self = .orange.opacity(0.9)
        case "yellow":
            self = .yellow.opacity(0.9)
        case "green":
            self = .green.opacity(0.9)
        case "indigo":
            self = .indigo.opacity(0.9)
        case "purple":
            self = .purple.opacity(0.9)
        case "cyan":
            self = .cyan.opacity(0.9)
        case "mint":
            self = .mint.opacity(0.9)
        case "teal":
            self = .teal.opacity(0.9)
        case "brown":
            self = .brown.opacity(0.9)
        case "gray":
            self = .gray.opacity(0.9)
        default:
            self = .blue.opacity(0.9)
        }
    }
}


