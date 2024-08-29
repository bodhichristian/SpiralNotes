//
//  SNStyle.swift
//  SpiralNotes
//
//  Created by christian on 8/26/24.
//

import Foundation
import SwiftUI

struct SNStyle {
    static let stickyColors: [Color] = [
        .pink, .orange, .yellow, .green, .blue, .purple
    ]
    
    static let notebookColors: [Color] = [
        .red.opacity(0.9),
        .orange.opacity(0.9),
        .yellow.opacity(0.9),
        .green.opacity(0.9),
        .blue.opacity(0.9),
        .purple.opacity(0.9)
    ]
    
    static func noteBackgroundGradient(for color: Color) -> LinearGradient {
        LinearGradient(
            colors: [
                color.opacity(0.1),
                color.opacity(0.1),
                color.opacity(0.2),
                color.opacity(0.3)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        
    }
    
    static func noteCardGradient(for color: Color) -> LinearGradient {
        return LinearGradient(
            colors: [color.opacity(0.0),
                     color.opacity(0.3)],
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    static func noteListBackgroundGradient(for notebook: Notebook) -> LinearGradient {
        let color = notebook.color
        
        return LinearGradient(
            colors: [
                color.opacity(0.1),
                color.opacity(0.1),
                color.opacity(0.2),
                color.opacity(0.3)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
