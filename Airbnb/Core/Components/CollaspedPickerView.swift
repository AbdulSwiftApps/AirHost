//
//  CollaspedPickerView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/25/24.
//

import SwiftUI

struct CollaspedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}

#Preview {
    CollaspedPickerView(title: "Who", description: "Add guests")
}
