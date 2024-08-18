//
//  StickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct StickyView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 200, height: 200)
            .foregroundStyle(.yellow.gradient)
            .shadow(radius: 4, y: 4)
            .padding()
    }
}

#Preview {
    StickyView()
}
