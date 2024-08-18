//
//  NotebookView.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import SwiftUI

struct NotebookView: View {
    var body: some View {
        ZStack {
            // Base
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.yellow.gradient)
                .frame(maxWidth: .infinity)
                .frame(height: 400)
                .padding(20)
                .shadow(radius: 4, y: 4)
            
            // Label
                Rectangle()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .padding(20)
            
            VStack {
                Text("SUBJECT")
                    .font(.caption2)
                    .fontWeight(.black)
                
                Text("Social Studies")
                    .font(.system(size: 48))
                    .fontWeight(.thin)
            }
            .foregroundStyle(.black)
            
            // Spirals
            VStack {
                ForEach(0..<6) { _ in
                    VStack(spacing: 4) {
                        ForEach(0..<2) { _ in
                            ZStack(alignment: .trailing) {
                                // Hole
                                Rectangle()
                                    .foregroundStyle(.black)
                                    .frame(width: 10, height: 10)
                                
                                // Ring
                                Rectangle()
                                    .frame(width: 30, height: 4)
                                    .foregroundStyle(
                                        LinearGradient(
                                            colors: [.gray, .gray, .white, .black],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                            }
                        }
                    }
                    .padding(.vertical, 16)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 12)
        }
    }
}

#Preview {
    NotebookView()
}
