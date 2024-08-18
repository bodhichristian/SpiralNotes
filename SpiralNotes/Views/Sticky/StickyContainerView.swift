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
                ForEach(0..<6) { _ in
                    NavigationLink {
                        StickyView()
                    } label: {
                        HStack {
                            StickyView()
                                .frame(width: 240, height: 240)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 3, height: 66)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

#Preview {
    StickyContainerView()
}
