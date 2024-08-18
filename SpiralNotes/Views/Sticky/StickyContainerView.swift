//
//  StickyContainerView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct StickyContainerView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10) { _ in
                    HStack {
                        StickyView()
                        Rectangle()
                            .frame(width: 1, height: 100)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
        
    }
}

#Preview {
    StickyContainerView()
}
