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
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 3, height: 66)
                            
                    }
                }
            }
        }
        
    }
}

#Preview {
    StickyContainerView()
}
