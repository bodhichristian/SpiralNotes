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
                                .frame(width: 200, height: 200)
                                .padding(6)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 3, height: 66)
                                .padding(.horizontal, 8)
                        }
                        .padding(.vertical)
                        .offset(x: 14)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        //.padding(.leading)
    }
}

#Preview {
    StickyContainerView()
}
