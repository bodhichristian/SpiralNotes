//
//  StickyView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct StickyPreview: View {
    let sticky: Sticky
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(sticky.color.gradient)
            .frame(maxWidth: 320, maxHeight: 320)
            .shadow(radius: 4, y: 4)
            .overlay {
                VStack(alignment: .leading) {
                    Text(sticky.title)
                        .foregroundStyle(.black)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text(Date.now.formatted(date: .numeric, time: .omitted))
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                        .padding(.bottom, 4)
                    
                    Text(sticky.content)
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .padding()
            }
    }
}

#Preview {
    StickyPreview(sticky: Sticky(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua.", color: .yellow))
}
