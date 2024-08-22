//
//  NotebookSubjectView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct NotebookSubjectView: View {
    let subject: String
    
    var body: some View {
        VStack {
            Text("SUBJECT")
                .font(.caption2)
                .fontWeight(.black)
            
            Text(subject)
                .font(.system(size: 48))
                .fontWeight(.thin)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ZStack {
        Color.white
        NotebookSubjectView(subject: "History")
    }
}
