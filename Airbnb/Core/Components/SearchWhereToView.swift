//
//  SearchWhereToView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import SwiftUI

struct SearchWhereToView: View {
    @Binding var destination: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Where to?")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .imageScale(.small)

                retrictedCharacterField(text: $destination, maxLength: 35)
                    .font(.subheadline)
            }
            .fontWeight(.medium)
            .frame(height: 44)
            .padding(.horizontal)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color(.systemGray4))
            }
        }
    }
}

struct SearchWhereToView_Previews: PreviewProvider {
    @State static var destination2 = ""
    
    static var previews: some View {
        SearchWhereToView(destination: $destination2)
    }
}
