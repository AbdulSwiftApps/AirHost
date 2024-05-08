//
//  SearchAndFilterBarView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/24/24.
//

import SwiftUI

struct SearchAndFilterBarView: View {
    var body: some View {
        HStack {
            // magifying glass logo
            Image(systemName: "magnifyingglass")

            // destination
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any week - Add guests")
                    .foregroundStyle(.gray)
            }
            .font(.footnote)
            
            Spacer()
            
            // button - filter logo
            Button(action: {
                // action here
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBarView()
}
