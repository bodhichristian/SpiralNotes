//
//  Color+PrimaryNegative.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import Foundation
import SwiftUI

extension Color {
    static func primaryNegative(for colorScheme: ColorScheme) -> Color {
        switch colorScheme {
        case .dark:
            return .black
        default:
            return .white
        }
    }
}
