//
//  SortButton.swift
//  SpiralNotes
//
//  Created by christian on 8/19/24.
//

import SwiftUI

struct SortButtonLabel: View {
    var body: some View {
        Image(systemName: "arrow.up.arrow.down")
            .fontWeight(.semibold)
            .accessibilityLabel("Sort")
            .accessibilityHint("Choose the order in which this list is sorted.")
    }
}

#Preview {
    SortButtonLabel()
}
