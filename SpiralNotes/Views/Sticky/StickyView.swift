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
            .foregroundStyle(.yellow.gradient)
            .frame(maxWidth: 320, maxHeight: 320)
            .shadow(radius: 4, y: 4)
            .overlay {
                VStack(alignment: .leading) {
                    Text("Sticky Title")
                        .foregroundStyle(.black)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(Date.now.formatted(date: .numeric, time: .omitted))
                        .fontWeight(.medium)
                        .foregroundStyle(.purple)
                        .padding(.bottom, 4)
                    
                    Text("""
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        """)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.black)
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .padding()
            }
            .padding()
    }
}

#Preview {
    StickyView()
}
