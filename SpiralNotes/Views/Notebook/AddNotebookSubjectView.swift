//
//  AddNotebookSubjectView.swift
//  SpiralNotes
//
//  Created by christian on 8/21/24.
//

import SwiftUI

struct AddNotebookSubjectView: View {
    @Binding var subject: String
    @Environment(\.colorScheme) var colorScheme
    
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
    AddNotebookSubjectView(subject: .constant("French"))
}
