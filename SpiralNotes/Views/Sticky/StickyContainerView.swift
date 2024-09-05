//
//  StickyContainerView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct StickyContainerView: View {
    let stickies: [Sticky] = Sticky.mockData()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(stickies, id: \.id) { sticky in
                    NavigationLink {
                        StickyView(sticky: sticky)
                    } label: {
                        HStack {
                            StickyPreview(sticky: sticky)
                                .frame(width: 200, height: 200)
                                .padding(6)
                            
                            if sticky.id != stickies.last!.id {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 3, height: 66)
                                    .padding(.horizontal, 8)
                            }
                        }
                        .padding(.vertical)
                        .offset(x: 14)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.trailing, 28)
        }
    }
}

#Preview {
    StickyContainerView()
}
