//
//  StickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct StickyView: View {
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200)
            .foregroundStyle(.yellow)
            .shadow(radius: 4, y: 4)
            .padding()
    }
}

#Preview {
    StickyView()
}
